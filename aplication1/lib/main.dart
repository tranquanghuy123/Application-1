import 'package:aplication1/a.dart';
import 'package:aplication1/b.dart';
import 'package:aplication1/c.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(

  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PageC(),
    );
  }
}

