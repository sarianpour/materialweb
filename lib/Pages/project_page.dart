import 'package:flutter/material.dart';
import 'package:materialweb/layout/adaptive.dart';
import 'package:materialweb/services/download_by_url.dart';
import 'package:materialweb/widgets/plain_text.dart';
import 'package:materialweb/widgets/project_card.dart';
import 'package:materialweb/widgets/project_item.dart';
import 'package:materialweb/widgets/raisedButton.dart';
import 'package:materialweb/widgets/title_text.dart';
import 'dart:html' as html;

import 'package:materialweb/widgets/widget_image_container.dart';

const String bmiProjectUrl =
    'https://firebasestorage.googleapis.com/v0/b/sarianportfolio.appspot.com/o/project_bmi.jpg?alt=media&token=692c5d9d-aef0-4518-80e4-e534643413a0';
const String climaProjectUrl =
    'https://firebasestorage.googleapis.com/v0/b/sarianportfolio.appspot.com/o/clima.jpg?alt=media&token=9068d347-9edb-4c17-b228-ad3958df6256';
const String FlashProjectUrl =
    'https://firebasestorage.googleapis.com/v0/b/sarianportfolio.appspot.com/o/flash.jpg?alt=media&token=44b4fde5-244d-4c72-98e5-24a957782e6b';

class ProjectPage extends StatelessWidget {
//  static List<ProjectItem> projectItems = [
//    ProjectItem(
//        projectImageUrl: FlashProjectUrl,
//        text: 'login and chat with my friends in the group!',
//        title: 'Flash Chat',
//        websiteLink: 'https://flash-e870e.firebaseapp.com'),
//    ProjectItem(
//        projectImageUrl: climaProjectUrl,
//        text: 'how is weather in your location and what should you wear',
//        title: 'Weather App',
//        websiteLink: 'https://climaflutter.firebaseapp.com/#/'),
//    ProjectItem(
//      projectImageUrl: bmiProjectUrl,
//      websiteLink: 'https://bmical-6f20c.firebaseapp.com/#/',
//      title: 'BMI calculator',
//      text:
//      'native android,ios app and a website designed to help you calculate your BMI.',
//    ),
//  ];
  static List<ProjectCard> ProjectCards = [
    ProjectCard(
      imageUrl: FlashProjectUrl,
      text: 'Flash Chat',
    ),
    ProjectCard(
      imageUrl: climaProjectUrl,
      text: 'Weather App',
    ),
    ProjectCard(
      imageUrl: bmiProjectUrl,
      text: 'BMI calculator',
    ),
  ];
  Widget plainText = PlainText(
    text:
        'For over 2 years I’ve been developing andriod, ios, and web apps. Below are some of my favourites.',
  );
  Widget title = TitleText(
    text: 'My Projects',
  );
  List<Widget> containers = [
    Container(height: 300, width: 300, color: Colors.green),
    Container(height: 300, width: 300, color: Colors.green),
    Container(height: 300, width: 300, color: Colors.green)
  ];
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);

    return Column(
      children: [
//        GridView.count(
//          //shrinkWrap: true,
//          physics: BouncingScrollPhysics(),
//          crossAxisCount: 1,
//          children: containers,
//        ),
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
        ProjectCard(
          imageUrl: FlashProjectUrl,
          text: 'Flash Chat',
        ),

//        projectItems[0],
//        projectItems[1],
//        projectItems[2],
      ],
    );
  }
}
//Container(
//height: 20000,
//width: 2000,
//child: GridView.count(
//crossAxisCount: 3,
//children: ProjectCards,
//),
//),
