import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'starter app',
          style: textTheme.headline3.copyWith(
            color: colorScheme.onSecondary,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Subtitle',
          style: textTheme.subtitle1,
        ),
        const SizedBox(height: 48),
        Text(
          'contact body',
          style: textTheme.bodyText1,
        ),
      ],
    );
  }
}
