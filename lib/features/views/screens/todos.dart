library todos;

import 'package:flutter/material.dart';

import '../../../utils/services/api_service.dart';
import '../../models/todos_model.dart';

part '../components/todos_card.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  late List<ToDos>? _todosModel = [];

  @override
  void initState() {
    super.initState();
    _getTodo();
  }

  void _getTodo() async {
    _todosModel = (await ApiService().getTodo())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDos'),
      ),
      body: _todosModel == null || _todosModel!.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: _todosModel!.length,
        itemBuilder: (context, index) {
          return _TodosCard(
              id: _todosModel![index].id.toString(),
              userId: _todosModel![index].userId.toString(),
              title: _todosModel![index].title,
              completed: _todosModel![index].completed);
        },
      ),
    );
  }
}
