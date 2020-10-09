import 'package:bmi_calci/constants.dart';
import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final IconData genderIconData;
  final String genderText;
  GenderIcon({this.genderIconData, this.genderText}) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIconData,
          size: 70.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          genderText,
          style: kCardLabel,
        ),
      ],
    );
  }
}
