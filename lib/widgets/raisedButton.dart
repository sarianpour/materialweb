import 'package:flutter/material.dart';
import 'package:materialweb/widgets/plain_text.dart';

class WidgetRaisedButton extends StatelessWidget {
  WidgetRaisedButton({this.onPressed, this.text});
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        //color: secondaryColor,
        onPressed: onPressed,
        child: PlainText(text: text));
  }
}
