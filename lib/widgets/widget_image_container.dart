import 'package:flutter/material.dart';

class WidgetImageContainer extends StatefulWidget {
  WidgetImageContainer({this.pictureUrl});
  final String pictureUrl;

  @override
  _WidgetImageContainerState createState() => _WidgetImageContainerState();
}

class _WidgetImageContainerState extends State<WidgetImageContainer> {
  @override
  Widget build(BuildContext context) {
//    return Image.network(
//      widget.pictureUrl,
//      height: 400,
//      width: 300,
//    );

    return Container(
      height: 400,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
// color: primaryColor,
        image: DecorationImage(
          image: NetworkImage(widget.pictureUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
