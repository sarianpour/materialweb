import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Row(
      children: [
        Text('S',
            style: themeData.textTheme.headline4.copyWith(
              fontWeight: FontWeight.w900,
              color: themeData.colorScheme.onPrimary,
            )),
        Text('Arian',
            style: themeData.textTheme.headline4.copyWith(
              fontWeight: FontWeight.w900,
              color: themeData.colorScheme.onSecondary,
            ))
      ],
    );
  }
}
