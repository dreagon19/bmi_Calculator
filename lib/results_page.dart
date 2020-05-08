import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_codes.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.recommendation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String recommendation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kNumberFieldStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              containerColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIresult,
                  ),
                  Text(
                    recommendation,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InputPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
