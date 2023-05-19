import 'package:exemplo_app/screems/android/NoteWidget.dart';
import 'package:flutter/material.dart';
import 'package:exemplo_app/screems/android/login.dart';


class HomeCalendar extends StatelessWidget {
  const HomeCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openCalendarModal() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              height: 300,
              child: Column(
                children: [
                  const Text(
                    'Calendário',
                    style: TextStyle(fontSize: 24),
                  ),
                  // Adicione o conteúdo do calendário aqui
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Agendaily',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(12, (index) {
                  final monthNumber = (index + 1).toString();
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return NoteWidget();
                        }),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.red,
                              width: 6.0,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            monthNumber,
                            style: const TextStyle(fontSize: 48.0),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Login();
                  }),
                );
              },
              child: const Text(
                'Sair',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
