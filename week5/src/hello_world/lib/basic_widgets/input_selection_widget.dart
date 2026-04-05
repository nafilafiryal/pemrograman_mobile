import 'package:flutter/material.dart';

class MyInputWidget extends StatelessWidget {
  const MyInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Mengubah judul AppBar menjadi Nama dan NIM
        appBar: AppBar(title: const Text("Nafilah Firyal Hana - 244107060047")),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama',
          ),
        ),
      ),
    );
  }
}