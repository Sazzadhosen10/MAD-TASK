import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid App',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  ImageGridScreen({super.key});

  final List<String> imageUrls = [
    'https://humaneanimalrescue.org/wp-content/uploads/2019/08/community-cats-copy.jpg',
    'https://images.pexels.com/photos/27378772/pexels-photo-27378772.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=341.25&fit=crop&h=552.5',
    'https://www.hartz.com/wp-content/uploads/2023/07/why-do-cats-have-whiskers-1.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/why-cats-are-best-pets-1559241235.jpg?crop=0.586xw:0.880xh;0.0684xw,0.0611xh&resize=1200:*',
    'https://static.wixstatic.com/media/103d43_9ecc1086f64147b9afe8a9c3333b1a1a~mv2.jpg/v1/fill/w_640,h_620,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/103d43_9ecc1086f64147b9afe8a9c3333b1a1a~mv2.jpg',
    'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CATS'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(imageUrls[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}