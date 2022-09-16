

import 'package:flutter/material.dart';

class TaskComponent extends StatefulWidget {
  @override
  State<TaskComponent> createState() => TaskComponentState();

}

class TaskComponentState extends State<TaskComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          Text(
            'You have selected tasks',
          ),
        ],
      ),
    );
  }

}
