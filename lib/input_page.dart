import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'BasicCard.dart';
import 'CustomIcon.dart';

const double bottomContainerHeight = 60;
const activeColour = Color(0xFF1D1E33);
const inactiveColour = Color(0xFF111328);
const bottomColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List colors = [inactiveColour, inactiveColour];

  void updateColor(int i) {
    if (colors[i] == inactiveColour) {
      colors[i] = activeColour;
      i++;
      i %= 2;
      colors[i] = inactiveColour;
    } else {
      colors[i] = inactiveColour;
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(0);
                      });
                    },
                    child: BasicCard(
                      color: colors[0],
                      cardChild:
                          CustomIcon(icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: BasicCard(
                      color: colors[1],
                      cardChild: CustomIcon(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
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
