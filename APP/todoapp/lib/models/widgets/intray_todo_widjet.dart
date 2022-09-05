import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  IntrayTodo(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          // ignore: unnecessary_new
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(children: <Widget>[
        Radio(
            value: "radio value",
            groupValue: "group value",
            onChanged: (value) {
              //selected value
            }),
        Column(
          children: <Widget>[
            Text(
              title,
              style: darkTodoTitle,
            )
          ],
        )
      ]),
    );
  }
}
