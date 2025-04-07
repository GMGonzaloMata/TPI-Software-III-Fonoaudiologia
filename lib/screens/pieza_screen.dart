import 'package:flutter/material.dart';

class PiezaScreen extends StatelessWidget {
  const PiezaScreen({super.key});

  void _showSignDialog(BuildContext context, String objectName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(objectName),
        content: Text('Aquí se mostraría la seña de "$objectName".'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pieza'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildObjectButton(context, 'Cama', Icons.bed),
          _buildObjectButton(context, 'Lámpara', Icons.lightbulb),
          _buildObjectButton(context, 'Juguete', Icons.toys),
        ],
      ),
    );
  }

  Widget _buildObjectButton(BuildContext context, String name, IconData icon) {
    return ElevatedButton(
      onPressed: () => _showSignDialog(context, name),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48),
          const SizedBox(height: 10),
          Text(name),
        ],
      ),
    );
  }
}
