import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   title: const Text('Material App Bar'),
        // ),
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}