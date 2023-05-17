import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter"),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Count(),
    ));
  }
}

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador: $_count",
            style: const TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.deepPurple,
              ),
              label: const Text("Contar")),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
              icon: const Icon(
                Icons.clear_all,
                color: Colors.white,
              ),
              label: const Text("Zerar"))
        ],
      ),
    );
  }
}
