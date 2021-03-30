import 'package:flutter/material.dart';
import 'package:materialweb/layout/adaptive.dart';
import 'package:materialweb/services/download_by_url.dart';
import 'package:materialweb/widgets/plain_text.dart';
import 'package:materialweb/widgets/project_card.dart';
import 'package:materialweb/widgets/raisedButton.dart';
import 'package:materialweb/widgets/sized_box_widget.dart';
import 'package:materialweb/widgets/title_text.dart';
import 'dart:html' as html;

import 'package:materialweb/widgets/widget_image_container.dart';

const String cvUrl =
    'https://drive.google.com/uc?export=download&id=1zh3Q9WU1fS4SBZ0BVVBeQRr28i0dK5p-';
const String pictureUrl =
    'https://firebasestorage.googleapis.com/v0/b/sarianportfolio.appspot.com/o/picture_coffe.jpg?alt=media&token=6789e342-b8a6-44b6-acf4-cd0cbe913c9a';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);
    final Widget mTitleText = TitleText(
      text: 'Hey, I’m Saman.',
    );
    final Widget mPlainText = PlainText(
      text:
          'My Name is Saman Arianpour,Flutter developer from Tehran in Iran. I create responsive application on android/ios/web platform. After studing software engineering in University of Guilan then following with projects in image processing and full-stack development. Download my Resume for more details!',
    );
    final Widget mWidgetRaisedButton = WidgetRaisedButton(
      onPressed: () {
        DownloadFile df = new DownloadFile(url: cvUrl);
        df.downloadFile();
      },
      text: 'Download Resume',
    );
    if (isDesktop) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mTitleText,
                      SizedBoxWidget(),
                      SizedBoxWidget(),
                      mPlainText,
                      SizedBoxWidget(),
                      mWidgetRaisedButton,
                    ]),
              ),
              SizedBox(width: 48),
              //Image.network(pictureUrl),
              WidgetImageContainer(pictureUrl: pictureUrl),
            ],
          ),
          SizedBoxWidget(),
          SizedBoxWidget(),
          SizedBoxWidget(),
          SizedBoxWidget(),
        ],
      );
    } else {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mTitleText,
            SizedBoxWidget(),
            WidgetImageContainer(pictureUrl: pictureUrl),
            SizedBoxWidget(),
            mPlainText,
            SizedBoxWidget(),
            mWidgetRaisedButton,
            SizedBoxWidget(),
          ]);
    }
  }
}
