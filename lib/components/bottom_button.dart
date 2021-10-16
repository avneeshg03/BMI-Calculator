import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function ontap;
  final String buttontitle;
  BottomButton({this.ontap, this.buttontitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: kLowercolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottonContainerheight, //80.0,
        child: Center(
          child: Text(
            buttontitle,
            style: KLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
