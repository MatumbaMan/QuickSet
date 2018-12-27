import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "垂直或水平排列"
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
                
            },
          )
        ],
      ),
      body: _ColumnRowWidget(),
    );
  }
}

class _ColumnRowWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColumnRowState();
  }
}

class _ColumnRowState extends State<_ColumnRowWidget> {
  @override
  Widget build(BuildContext context) {
    Widget rowImages = Container(
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 1.0,
          style: BorderStyle.solid
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset("src/head.jpeg"),
          Image.asset("src/head.jpeg"),
          Image.asset("src/head.jpeg"),
        ],
      ),
    );

    Widget columnImages = Container(
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 1.0,
          style: BorderStyle.solid
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset("src/head.jpeg"),
          Image.asset("src/head.jpeg"),
          Image.asset("src/head.jpeg")
        ],
      ),
    );

    return Column(
      children: <Widget>[
        rowImages,
        columnImages
      ],
    );
  }
}