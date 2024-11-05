import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_a_fazer/entidade/tarefa.dart';
import 'package:tarefas_a_fazer/vm/tarefa_vm.dart';

class TarefaItemView extends StatelessWidget {
  final Tarefa tarefa;

  const TarefaItemView({
    super.key,
    required this.tarefa,
  });

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      height: 40,
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            tarefa.titulo,
            style: tema.textTheme.titleMedium,
          ),
          IconButton(
            onPressed: () {
              if (tarefa.finalizado) {
                return;
              }

              final vm = Provider.of<TarefaViewModel>(
                context,
                listen: false,
              );

              vm.finalizaTarefa(tarefa.id);
            },
            icon: Icon(
              Icons.check_circle,
              color: tarefa.finalizado ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
