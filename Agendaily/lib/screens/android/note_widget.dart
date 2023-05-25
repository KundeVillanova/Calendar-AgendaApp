import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NoteWidget extends StatefulWidget {
  final String monthNumber; // Adicione o parâmetro monthNumber ao construtor

  const NoteWidget({Key? key, required this.monthNumber}) : super(key: key);

  @override
  _NoteWidgetState createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  int _selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Eventos'),
      ),
      body: Column(
        children: [
          Text(
            'Mês selecionado: ${widget.monthNumber}',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 60.0,
            child: Scrollbar(
              thickness: 6.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 24,
                itemBuilder: (context, index) {
                  final number = index + 1;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedNumber = number;
                      });
                    },
                    child: Container(
                      width: 35.0,
                      margin: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        color: _selectedNumber == number ? Colors.red : Colors.grey,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          number.toString(),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: _selectedNumber == number ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Dia selecionado: $_selectedNumber',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Scrollbar(
              thickness: 10.0,
              child: ListView.builder(
                itemCount: 24,
                itemBuilder: (context, index) {
                  final lineNumber = index + 1;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 40.0,
                      color: Colors.red[400],
                      child: Row(
                        children: [
                          SizedBox(width: 10.0),
                          Text(
                            '$lineNumber h:',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
