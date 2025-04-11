import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom AppBar',
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
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/my_image.png',
              height: 40, // You can adjust this for your AppBar
            ),
            SizedBox(width: 10),
            Text('Daraz App'),
          ],
        ),
        
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 200,
          child: Image.asset(
            'assets/images/my_image.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
