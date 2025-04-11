import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styled Container',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          padding: EdgeInsets.all(100),
          margin: EdgeInsets.all(2),
          
          decoration: BoxDecoration(
            
            color: const Color.fromARGB(255, 154, 236, 2),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 156, 226, 42),
                
                blurRadius: 5,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Text(
            'Hello, I am a Container!',
            style: TextStyle(color: const Color.fromARGB(255, 251, 255, 251), fontSize: 20, fontWeight: FontWeight.bold),

          ),
        ),
      ),
    );
  }
}