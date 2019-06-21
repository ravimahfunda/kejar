import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  // This widget is the root of your application.

  VoidCallback onPressed;
  String text;
  Color color;
  Color textColor;

  StyledButton(this.onPressed,this.text, this.color, this.textColor);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      textColor: textColor,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      color: color,
    );
  }
}
