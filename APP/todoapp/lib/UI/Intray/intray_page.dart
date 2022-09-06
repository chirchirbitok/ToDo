import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/intray_todo_widjet.dart';

class IntrayPage extends StatefulWidget {
  const IntrayPage({Key? key}) : super(key: key);

  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<IntrayTodo> todoItems = [];
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 10; i++) {
      todoItems.add(IntrayTodo(i.toString(), "Hello World"));
    }
    todoItems = todoItems;
    return Container(
      color: darkGreyColor,
      child: _buildReoderableListSimple(context),
      // child: ReorderableListView(
      //   padding: EdgeInsets.only(top: 270),
      //   children: todoItems,
      //   onReorder: _onReorder,
      // ),
    );
  }

  Widget _buildListTile(BuildContext context, IntrayTodo item) {
    return ListTile(
      key: Key(item.keyValue),
      title: item,
    );
  }

  Widget _buildReoderableListSimple(BuildContext context) {
    return ReorderableListView(
        padding: EdgeInsets.only(top: 300.0),
        children: todoItems
            .map((IntrayTodo item) => _buildListTile(context, item))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            IntrayTodo item = todoItems[oldIndex];
            todoItems.remove(item);
            todoItems.insert(newIndex, item);
          });
        });
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final IntrayTodo item = todoItems.removeAt(oldIndex);
      todoItems.insert(newIndex, item);
    });
  }

  List<Widget> getList() {
    for (int i = 0; i < 10; i++) {
      todoItems.add(IntrayTodo(i.toString(), "Hello World"));
    }
    return todoItems;
  }
}
