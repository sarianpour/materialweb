import 'package:flutter/material.dart';
import 'package:materialweb/layout/adaptive.dart';

class PlainText extends StatelessWidget {
  final String text;
  final Color color;
  PlainText({this.text, this.color});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    double cWidth = MediaQuery.of(context).size.width * 0.2;
    final isDesktop = isDisplayDesktop(context);
    return Text(text,
        textAlign: isDesktop ? TextAlign.start : TextAlign.center,
        style: textTheme.headline6.copyWith(
          height: 1.5,
          color: (color == null) ? colorScheme.onPrimary : color,
        ));
  }
}
