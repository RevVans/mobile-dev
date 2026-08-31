import 'package:flutter/material.dart';

import 'models/user_model1.dart';

void main() {
  Map jsonResponse = {'name': 'Budi Santoso', 'age': 22};

  UserModel user = UserModel.fromJson(jsonResponse);

  print('nama: ${user.name}');
  print('ID: ${user.id}');
  print('Status: ${user.isActive}');

  print('to JSON: ${user.toJson()}');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Pertemuan 1')),
        body: const Center(
          child: Text('Hello World', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
