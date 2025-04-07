import 'package:flutter/material.dart';

class BanoScreen extends StatelessWidget {
  const BanoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baño'),
      ),
      body: const Center(
        child: Text(
          'Bienvenido al Baño',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
