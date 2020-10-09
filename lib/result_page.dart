import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String bmiInterpret;
  final Color bmiColor;
  ResultPage(
      {this.bmiResult, this.bmiText, this.bmiInterpret, this.bmiColor}) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 25.0),
                child: Text(
                  'Your Result',
                  style: kBoldLabel.copyWith(
                    fontSize: 50.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(16.0),
                color: kInactiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HealthCheck(bodyCondition: bmiText, color: bmiColor),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 120.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      bmiInterpret,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                bottomButtonTitle: 'Re-Calculate',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                }),
          ],
        ),
      ),
    );
  }
}

class HealthCheck extends StatelessWidget {
  final String bodyCondition;
  final Color color;
  HealthCheck({this.bodyCondition, this.color}) {}

  @override
  Widget build(BuildContext context) {
    return Text(
      bodyCondition,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
