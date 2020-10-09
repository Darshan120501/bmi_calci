import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String bottomButtonTitle;
  BottomButton({@required this.bottomButtonTitle, @required this.onTap}) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            bottomButtonTitle,
            style: kBottomBarText,
          ),
        ),
        color: kBottomBarColor,
        height: kBottomBarHeight,
        width: double.infinity,
      ),
    );
  }
}
