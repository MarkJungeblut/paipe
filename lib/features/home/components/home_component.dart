

import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  @override
  State<HomeComponent> createState() => HomeComponentState();

}

class HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          Text(
            'You have selected home',
          ),
        ],
      ),
    );
  }

}
