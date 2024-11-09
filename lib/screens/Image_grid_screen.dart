import 'package:flutter/material.dart';

class ImageGridScreen extends StatelessWidget {
  const ImageGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
