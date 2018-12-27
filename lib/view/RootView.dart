import 'package:flutter/material.dart';

import 'functionView/LayoutView.dart';
import 'functionView/HelloWordView.dart';
import 'functionView/ColumnRowView.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("功能列表"),
        ),
        body: _ListWidget(),
      ),
    );
  }
}

class _ListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListState();
}

class _ListState extends State<_ListWidget> {
  final _functions = ["构建布局", "放置一个Widget", "水平或垂直排列", "通用布局"];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, i) {

        if (i < _functions.length) {
          return _buildRow(_functions[i]); 
        } 
      },
    );
  }

  Widget _buildRow(String title) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(title),
          trailing: Icon(
            Icons.access_alarm,
            color: Colors.orange,
          ),
          onTap: () {
            var index = _functions.indexOf(title);
            _switchToIndex(context, index);
          },
        ),
        Divider(),
      ],
    );
  }
}

// view switcher
void _switchToIndex(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => new LayoutView())
        );
      break;
    case 1:
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => new HelloWorldView())
        );
      break;
    case 2:
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => new ColumnRowView())
        );
      break;
    default:
  }
}