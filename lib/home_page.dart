import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_a_fazer/tarefa_item_view.dart';
import 'package:tarefas_a_fazer/vm/tarefa_vm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final vm = Provider.of<TarefaViewModel>(context);
    final tarefas = vm.tarefas;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/nova"),
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: tarefas.length,
        itemBuilder: (context, index) => TarefaItemView(
          tarefa: tarefas[index],
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
