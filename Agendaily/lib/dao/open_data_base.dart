import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

Future<Database> getDatabase() async{
  final String path = join(await getDatabasesPath(), 'db');

  return openDatabase(
      path,
      onCreate : (db, version)  {
        db.execute('CREATE TABLE USUARIO (id INTEGER PRIMARY KEY, nome TEXT, email TEXT, senha TEXT, nasc TEXT)');
      },
      version:1
  );

}