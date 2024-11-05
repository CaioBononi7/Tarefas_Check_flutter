import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_a_fazer/vm/tarefa_vm.dart';

class NovaTarefaPage extends StatelessWidget {
  const NovaTarefaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final tituloController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Tarefa"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: tituloController,
                decoration: const InputDecoration(
                  labelText: "Titulo",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final vm = Provider.of<TarefaViewModel>(context, listen: false);
                vm.addTarefa(tituloController.text);
                Navigator.pop(context);
              },
              child: const Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
