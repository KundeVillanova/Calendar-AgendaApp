import 'package:exemplo_app/screems/android/login.dart';
import 'package:flutter/material.dart';

class HomeCalendar extends StatelessWidget {
  const HomeCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bem-vindo!',
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(12, (index) {
                  final monthNumber = (index + 1).toString();
                  return Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.red,
                            width: 4.0,
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
                  );
                }),
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
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

