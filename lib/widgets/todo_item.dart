import 'package:flutter/material.dart';
import 'package:to_do/constraints/color.dart';
import 'package:to_do/model/models.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key, required this.todo});
  final ToDo todo;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: tdBlue,
          size: 30,
        ),
        title: Text(
          todo.toDoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            iconSize: 20,
            icon: Icon(
              Icons.delete,
            ),
          ),
        ),
      ),
    );
  }
}
