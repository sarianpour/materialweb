import 'package:flutter/material.dart';
import 'package:materialweb/layout/adaptive.dart';
import 'package:materialweb/widgets/plain_text.dart';

import 'dart:html' as html;
import 'dart:js' as js;

import 'package:materialweb/widgets/raisedButton.dart';
import 'package:materialweb/widgets/widget_image_container.dart';

class ProjectItem extends StatelessWidget {
  ProjectItem(
      {this.projectImageUrl,
      this.containerColor,
      this.text,
      this.title,
      this.websiteLink});

  final String projectImageUrl;
  final Color containerColor;
  final String text;
  final String title;

  final String websiteLink;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          children: [
            Divider(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: isDesktop
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: isDesktop
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      Text(title,
                          style: textTheme.headline5.copyWith(
                            height: 1.5,
                            color: colorScheme.onPrimary,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      isDesktop
                          ? Container()
                          : WidgetImageContainer(pictureUrl: projectImageUrl),
                      SizedBox(
                        height: 30,
                      ),
                      PlainText(
                        text: text,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      WidgetRaisedButton(
                        onPressed: () {
                          // html.window.open(websiteLink, 'new tab');
                          js.context.callMethod('open', ['$websiteLink']);
                        },
                        text: 'Open The Website',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                isDesktop
                    ? WidgetImageContainer(pictureUrl: projectImageUrl)
                    : Container(),
              ],
            ),
          ],
        ));
  }
}
