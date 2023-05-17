import 'package:flutter/material.dart';
import 'package:exemplo_app/screems/android/createAccount.dart';
import 'package:exemplo_app/screems/android/homeCalendar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Agendaily",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  "Agendaily",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  "mantenha o controle",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Image.asset(
                  'assets/calendar.png',
                  height: 200,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const HomeCalendar();
                      }),
                    );
                  },
                  child: const Text(
                    "Fazer Login",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const CreateAccount();
                      }),
                    );
                  },
                  child: const Text(
                    "Criar Conta",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// import 'package:exemplo_app/screems/android/homeCalendar.dart';
// import 'package:flutter/material.dart';
//
// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Agendaily",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Login"),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 30.0),
//                   child: Image.asset(
//                     'assets/calendar.png',
//                     height: 200,
//                   ),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: const Size.fromHeight(50),
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) {
//                         return const HomeCalendar();
//                       }),
//                     );
//                   },
//                   child: const Text("Fazer Login"),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: const Size.fromHeight(50),
//                   ),
//                   onPressed: () {
//                     // Adicione ação para criar conta aqui
//                   },
//                   child: const Text("Criar Conta"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }