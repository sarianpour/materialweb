import 'package:flutter/material.dart';
import 'package:materialweb/widgets/plain_text.dart';
import 'package:materialweb/widgets/widget_image_container.dart';

const String climaProjectUrl =
    'https://firebasestorage.googleapis.com/v0/b/sarianportfolio.appspot.com/o/clima.jpg?alt=media&token=9068d347-9edb-4c17-b228-ad3958df6256';

class ProjectCard extends StatelessWidget {
  ProjectCard({this.imageUrl, this.text});
  final String imageUrl;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 450,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          PlainText(
            text: text,
          )
        ],
      ),
    );
  }
}
