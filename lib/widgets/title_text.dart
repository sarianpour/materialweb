import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  TitleText({this.text, this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    double cWidth = MediaQuery.of(context).size.width * 0.2;

    return Text(
      text,
      style: textTheme.headline3.copyWith(
        color: (color == null) ? colorScheme.onPrimary : color,
      ),
    );
  }
}
