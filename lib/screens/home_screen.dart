import 'package:flutter/material.dart';
import 'pieza_screen.dart';
import 'cocina_screen.dart';
import 'bano_screen.dart';
import 'patio_screen.dart';
import 'avatar_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona un Ambiente'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildEnvironmentButton(context, 'Pieza', Icons.bed),
          _buildEnvironmentButton(context, 'Cocina', Icons.kitchen),
          _buildEnvironmentButton(context, 'Baño', Icons.bathtub),
          _buildEnvironmentButton(context, 'Patio', Icons.park),
          _buildAvatarButton(context),
        ],
      ),
    );
  }

 Widget _buildEnvironmentButton(BuildContext context, String name, IconData icon) {
    return ElevatedButton(
      onPressed: () {
        switch (name) {
          case 'Pieza':
            Navigator.push(context, MaterialPageRoute(builder: (_) => const PiezaScreen()));
            break;
          case 'Cocina':
            Navigator.push(context, MaterialPageRoute(builder: (_) => const CocinaScreen()));
            break;
          case 'Baño':
            Navigator.push(context, MaterialPageRoute(builder: (_) => const BanoScreen()));
            break;
          case 'Patio':
            Navigator.push(context, MaterialPageRoute(builder: (_) => const PatioScreen()));
            break;
        }
      },
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
  
  Widget _buildAvatarButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const AvatarScreen()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      textStyle: const TextStyle(fontSize: 18),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.person, size: 48),
        SizedBox(height: 10),
        Text('Ver Avatar'),
      ],
    ),
  );
}

}
