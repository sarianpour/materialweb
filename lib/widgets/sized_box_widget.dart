import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  SizedBoxWidget({this.height = 48, this.width = 48});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
