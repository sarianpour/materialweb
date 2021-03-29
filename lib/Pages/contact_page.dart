import 'package:flutter/material.dart';
import 'package:materialweb/layout/adaptive.dart';
import 'package:materialweb/widgets/comment_widget.dart';
import 'package:materialweb/widgets/plain_text.dart';
import 'package:materialweb/widgets/title_text.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);
    Widget plainText = PlainText(
      text:
          'You like to create a cross platfor app? fill in the form below and get in touch with me.',
    );
    Widget title = TitleText(
      text: 'Contact Me',
    );
    return Column(
      children: [
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
                    title,
                    SizedBox(height: 48),
                    SizedBox(height: 48),
                    plainText,
                    SizedBox(height: 48),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        CommentWidget(),
//        projectItems[0],
//        projectItems[1],
//        projectItems[2],
      ],
    );
  }
}
