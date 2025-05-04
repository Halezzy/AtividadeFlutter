import 'package:flutter/material.dart';
import 'screens/contador_screen.dart';
import 'screens/tema_screen.dart';
import 'screens/tarefas_screen.dart';
import 'screens/curtir_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercícios com Drawer',
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: HomeScreen(
        onToggleTheme: () => setState(() => isDark = !isDark),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const HomeScreen({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Exercícios', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('Contador'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ContadorScreen())),
            ),
            ListTile(
              title: const Text('Modo Claro/Escuro'),
              onTap: () {
                Navigator.pop(context);
                onToggleTheme();
              },
            ),
            ListTile(
              title: const Text('Lista de Tarefas'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TarefasScreen())),
            ),
            ListTile(
              title: const Text('Curtir com contador'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CurtirScreen())),
            ),
          ],
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Text(
                '≡ Escolha uma opção no menu ≡',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Atividade Hugo Alessi - RA: IT3037398',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
