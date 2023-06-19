import 'package:cargapesada/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carga Pesada',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: const LoginPage(),
    );
  }
}