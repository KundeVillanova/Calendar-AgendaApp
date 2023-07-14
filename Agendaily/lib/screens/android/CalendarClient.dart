
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';


class CalendarClient {
  final String apiKey = 'AIzaSyABkzJvEK39QwvXRqM0Egsrc1eXsWQTdhM'; // Substitua pela sua chave da API

  void insertEvent(String title, DateTime startTime, DateTime endTime) async {
    var url = Uri.parse('https://www.googleapis.com/calendar/v3/calendars/primary/events?key=$apiKey');

    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'summary': title,
      'start': {'dateTime': startTime.toUtc().toIso8601String()},
      'end': {'dateTime': endTime.toUtc().toIso8601String()},
    });

    try {
      var response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        log('Event added in Google Calendar');
      } else {
        log('Unable to add event in Google Calendar');
      }
    } catch (e) {
      log('Error creating event: $e');
    }
  }
}
