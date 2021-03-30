import 'package:flutter/material.dart';
import 'package:materialweb/widgets/plain_text.dart';

class WidgetRaisedButton extends StatefulWidget {
  WidgetRaisedButton({this.onPressed, this.text});
  final Function onPressed;
  final String text;

  @override
  _WidgetRaisedButtonState createState() => _WidgetRaisedButtonState();
}

class _WidgetRaisedButtonState extends State<WidgetRaisedButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: colorScheme.onSecondary, width: 2)),
//        hoverColor: Colors.transparent,
        disabledTextColor: Colors.red,
//textColor: Colors.green,
        //color: Colors.transparent,
        onPressed: widget.onPressed,
        child: PlainText(text: widget.text));
  }
}
//PlainText(text: widget.text)
//RaisedButton(
//padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
//shape: RoundedRectangleBorder(
//borderRadius: BorderRadius.circular(5),
//side: BorderSide(color: colorScheme.onSecondary, width: 2)),
//hoverColor: colorScheme.onSecondary,
//disabledTextColor: Colors.red,
////textColor: Colors.green,
//color: Colors.transparent,
//onPressed: widget.onPressed,
//child: Text(widget.text))
