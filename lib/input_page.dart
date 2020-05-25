import 'package:flutter/material.dart';

const double bottomContainerHeight = 60;
const activeColour = Color(0xFF1D1E33);
const bottomColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BasicCard(
                    color: activeColour,
                  ),
                ),
                Expanded(
                  child: BasicCard(
                    color: activeColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BasicCard(
              color: activeColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BasicCard(
                    color: activeColour,
                  ),
                ),
                Expanded(
                  child: BasicCard(
                    color: activeColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class BasicCard extends StatelessWidget {
  BasicCard({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
