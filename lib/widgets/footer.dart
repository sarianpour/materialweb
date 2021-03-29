import 'package:flutter/material.dart';

import 'dart:html' as html;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:materialweb/widgets/plain_text.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(16, 17, 20, 100),
        padding:
            const EdgeInsets.only(left: 70.0, right: 70.0, top: 35, bottom: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HyperlinkText(
              url: 'https://github.com/sarianpour',
              text: 'GitHub',
              iconData: FontAwesomeIcons.github,
            ),
            HyperlinkText(
              url: 'https://www.linkedin.com/in/saman-arianpour-b1462518b',
              text: 'Linkdin',
              iconData: FontAwesomeIcons.linkedin,
            ),
            HyperlinkText(
              url: 'https://www.instagram.com/samanarianpor/',
              text: 'Instagram',
              iconData: FontAwesomeIcons.instagram,
            ),
          ],
        ));
  }
}

class HyperlinkText extends StatelessWidget {
  HyperlinkText({this.text, this.iconData, this.url});
  final String text;
  final IconData iconData;
  final String url;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        html.window.open(url, 'new tab');
      },
      child: Row(
        children: [
          Icon(
            iconData,
            color: colorScheme.onSecondary,
          ),
          SizedBox(width: 15),
          PlainText(
            text: text,
          ),
        ],
      ),
    );
  }
}
