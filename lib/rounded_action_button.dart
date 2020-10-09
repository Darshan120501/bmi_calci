import 'package:flutter/material.dart';
import 'constants.dart';

class RoundActionButton extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  RoundActionButton({this.iconData, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
      onPressed: onPress,
      elevation: 6.0,
      fillColor: kInactiveCardColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
