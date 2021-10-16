import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

const icon_size = 80.0;
const font_size = 18.0;
const box_height = 15.0;

class NewWidget extends StatelessWidget {
  final String t;
  final IconData icon;
  NewWidget({@required this.t, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: icon_size,
        ),
        SizedBox(
          height: box_height,
        ),
        Text(
          t,
          style: kLabeltext,
        ),
      ],
    );
  }
}
