// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


// ignore: must_be_immutable
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

   TodoTile({
    super.key,
     required this.taskName,
      required this.taskCompleted, 
      required this.onChanged,
      required this.deleteFunction,

     
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
              )
            
          ]
          ),
        child: Container(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                 onChanged: onChanged,
                 activeColor: Colors.black,
                 ),
        
               Text (
                taskName,
                // ignore: prefer_const_constructors
                style: TextStyle(decoration:taskCompleted? 
                TextDecoration.lineThrough 
                : TextDecoration.none,
                ),
        
               ),
               ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
            ),
        ),
      ),
    );
  }
}