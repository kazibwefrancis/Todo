// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content:Container(
        height: 120,
        // ignore: duplicate_ignore
        // ignore: prefer_const_constructors
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
          //getting user data
          // ignore: duplicate_ignore
          // ignore: prefer_const_constructors
          TextField(
            controller: controller ,
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              hintText: "Add a Task 😋",
               ),

          ),

          //save and canel button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              MyButton(text: "Save ✨", onPressed: onSave),

              const SizedBox(width: 8,),

              //cancel button
              MyButton(text: "Cancel 🗑", onPressed: onCancel),

            ]
            ,)
        ],),
        ),
    );
  }
}