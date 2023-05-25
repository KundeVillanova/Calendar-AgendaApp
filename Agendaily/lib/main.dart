import 'package:flutter/material.dart';
import 'screens/android/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    home: Login()
  ));
}