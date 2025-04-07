import 'package:flutter/material.dart';

class PatioScreen extends StatelessWidget {
  const PatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patio'),
      ),
      body: const Center(
        child: Text(
          'Bienvenido al Patio',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
