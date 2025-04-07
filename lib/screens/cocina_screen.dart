import 'package:flutter/material.dart';

class   CocinaScreen extends StatelessWidget {
  const     CocinaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Cocina'),
      ),
      body: const Center(
        child: Text(
          'Bienvenido a la  Cocina',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
