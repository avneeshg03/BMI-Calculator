import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiresult,
      @required this.inter,
      @required this.resulttext});

  final String bmiresult;
  final String resulttext;
  final String inter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
                padding: EdgeInsets.all(25.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: KTitleTextStyle,
                )),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              colour: kActivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    resulttext.toUpperCase(),
                    style: KResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiresult,
                    style: KBmiTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    inter,
                    style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttontitle: 'Re-Calculate',
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
