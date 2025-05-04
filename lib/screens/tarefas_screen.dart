import 'package:flutter/material.dart';

class TarefasScreen extends StatefulWidget {
  const TarefasScreen({super.key});

  @override
  State<TarefasScreen> createState() => _TarefasScreenState();
}

class _TarefasScreenState extends State<TarefasScreen> {
  final List<String> tarefas = [];
  final TextEditingController controller = TextEditingController();

  void adicionarTarefa() {
    final texto = controller.text.trim();
    if (texto.isNotEmpty) {
      setState(() {
        tarefas.add(texto);
        controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tarefas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(hintText: 'Nova tarefa'),
                  ),
                ),
                IconButton(icon: const Icon(Icons.add), onPressed: adicionarTarefa),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(tarefas[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
