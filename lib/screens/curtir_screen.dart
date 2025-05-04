import 'package:flutter/material.dart';

class CurtirScreen extends StatefulWidget {
  const CurtirScreen({super.key});

  @override
  State<CurtirScreen> createState() => _CurtirScreenState();
}

class _CurtirScreenState extends State<CurtirScreen> {
  int curtidas = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Curtir')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.favorite, color: Colors.pink, size: 48),
              onPressed: () => setState(() => curtidas++),
            ),
            const SizedBox(height: 8),
            Text('$curtidas curtidas', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
