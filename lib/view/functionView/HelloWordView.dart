import 'package:flutter/material.dart';

class HelloWorldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "Hello,World",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.orange
            )
          ),
          foregroundDecoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.0,
              style: BorderStyle.solid
            )
          )
        )
      )
    );
  }
}