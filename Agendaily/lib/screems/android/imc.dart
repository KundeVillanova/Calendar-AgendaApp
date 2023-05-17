import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  double _height = 180;
  double _weight = 30;
  double _imc = 0;
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Calcular IMC'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Altura: ${_height.toStringAsFixed(2)} (cm)",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  //color: Colors.amberAccent,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 0,
                    value: _height,
                    max: 250.0,
                    onChanged: (double height) {
                      setState(() {
                        _height = height;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text("Peso: ${_weight.toStringAsFixed(2)} (kg)",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  //color: Colors.amberAccent,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 0,
                    value: _weight,
                    max: 250.0,
                    onChanged: (double weight) {
                      setState(() {
                        _weight = weight;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _imc = _weight / ((_height / 100) * (_height / 100));

                        if (_imc < 18.5) {
                          _msg = "Você está abaixo do peso";
                        } else if (_imc < 25) {
                          _msg = "Você está acima do peso";
                        } else {
                          _msg = "Obeso ... ";
                        }
                      });
                    },
                    icon: const Icon(Icons.sports_gymnastics),
                    label: const Text("Calcular"),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "$_msg\nIMC: ${_imc.toStringAsFixed(2)}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          letterSpacing: 1,
                          height: 1.5,
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          )),
    );
  }
}
