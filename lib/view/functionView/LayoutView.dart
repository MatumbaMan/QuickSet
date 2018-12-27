import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("构建布局")
      ),
      body: _LayoutWidget(),
    );
  }
}

class _LayoutWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LayoutState();
  }
}

class _LayoutState extends State<_LayoutWidget> {

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = Image.asset(
      "src/head.jpeg",
      height: 200.0,
      fit: BoxFit.fitWidth,
    );

    Widget contentWidget = Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "第一行称其为标题部分"
                ),
                Text(
                  "第二行称其为按钮部分"
                )
              ],
            )
          ),
          Icon(
            Icons.star,
            color: Colors.pink,
          ),
          Text(
            "41"
          )
        ],
      )
    );

    Widget buttonWidget = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButton(Icons.call, "CALL"),
          _buildButton(Icons.location_searching, "LOCATION"),
          _buildButton(Icons.link, "SHARED"),
        ],
      )
    );

    Widget textWidget = Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run."
      ),
    );

    return Column(
      children: <Widget>[
        imageWidget,
        contentWidget,
        buttonWidget,
        textWidget
      ],
    );
  }
}

Widget _buildButton(IconData icon, String title) {

  var _textStyle = TextStyle(
    fontSize: 12.0,
    color: Colors.deepPurpleAccent
  );

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        icon,
        color: Colors.deepPurpleAccent,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Text(
          title,
          style: _textStyle,
        ),
      )
    ],
  );
}