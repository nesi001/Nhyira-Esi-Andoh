import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Welcome';
    return MaterialApp(
      title:appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyHome(),
      ),
        
    );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:7,vertical: 14),
          child: TextField(
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              hintText: "Enter Adress",
            ),
          ),
        )
      ]
    );
  }
}