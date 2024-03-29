import 'package:flutter/material.dart';
import 'package:hsr/intro/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 38, 38, 36)
      ),
      home: introhsr(),
    );
  }
}
