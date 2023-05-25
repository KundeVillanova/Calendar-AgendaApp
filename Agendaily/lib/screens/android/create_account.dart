import 'package:flutter/material.dart';
import '../../dao/usuario_dao.dart';
import '../../model/Usuario.dart';
import 'login.dart';

class CreateAccount extends StatelessWidget {
  //const CreateAccount({Key? key}) : super(key: key);
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController nascController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Agendaily",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Criar Conta"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/calendar.png',
                  height: 200,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: nascController,
                  decoration: InputDecoration(
                    labelText: 'Data de Nascimento',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    String nome = nomeController.text;
                    String email = emailController.text;
                    String senha = senhaController.text;
                    String nasc = nascController.text;
                    Usuario u = new Usuario(1, nome, email, senha, nasc);
                    UsuarioDao dao = new UsuarioDao().addUser(u);
                    print(u);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Login();
                      }),
                    );
                  },
                  child: const Text(
                    "Enviar",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: Colors.red,
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
                    "Cancelar",
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