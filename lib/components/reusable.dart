import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final colour;
  final Widget cardchild;
  final Function onPress;
  ReusableWidget({@required this.colour, this.cardchild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
