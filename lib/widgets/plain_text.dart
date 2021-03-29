import 'package:flutter/material.dart';

class PlainText extends StatelessWidget {
  final String text;
  PlainText({this.text});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    double cWidth = MediaQuery.of(context).size.width * 0.2;

    return Text(text,
        style: textTheme.headline6.copyWith(
          height: 1.5,
          color: colorScheme.onPrimary,
        ));
  }
}
