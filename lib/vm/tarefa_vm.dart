import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_a_fazer/entidade/tarefa.dart';

class TarefaViewModel extends ChangeNotifier {
  final List<Tarefa> _tarefas = [];

  void addTarefa(String titulo) {
    _tarefas.add(Tarefa.titulo(titulo));
    notifyListeners();
  }

  void finalizaTarefa(String id) {
    final posicao = _tarefas.indexWhere((t) => t.id == id);

    if (posicao >= 0) {
      _tarefas[posicao] = _tarefas[posicao].finalizar();
      notifyListeners();
    }
  }

  List<Tarefa> get tarefas => _tarefas;

  static ChangeNotifierProvider<TarefaViewModel> create() =>
      ChangeNotifierProvider(
        create: (_) => TarefaViewModel(),
      );
}
