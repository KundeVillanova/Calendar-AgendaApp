import 'package:agendaily/model/Usuario.dart';
import 'package:sqflite/sqflite.dart';

import 'open_data_base.dart';

class UsuarioDao{

  addUser(Usuario u) async{
    final Database db = await getDatabase();
    db.insert('USUARIO', u.toMap());
  }

}

