import 'package:flutter/material.dart';
import 'package:tarefas_a_fazer/home_page.dart';
import 'package:tarefas_a_fazer/nova_tarefa_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarefas",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(133, 42, 169, 169)),
      ),
      routes: {
        "/": (_) => const HomePage(),
        "/nova": (_) => const NovaTarefaPage(),
      },
      initialRoute: "/",
    );
  }
}
