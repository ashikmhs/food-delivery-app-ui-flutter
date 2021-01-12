import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconBackgrounColor;
  final Color iconColor;
//  final Function onPressed;
  RoundIconButton(
      {@required this.icon, this.iconBackgrounColor, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
//      onPressed: onPressed,
      child: Icon(
        icon,
        color: iconColor,
      ),
      shape: CircleBorder(),
      fillColor: iconBackgrounColor,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 35.0,
        width: 35.0,
      ),
    );
  }
}
