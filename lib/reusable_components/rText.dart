import 'package:flutter/material.dart';

class rText extends StatelessWidget {
  final String mainText;
  final double fontSize;
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;
  final FontWeight fontWeight;

  const rText({
    super.key,
    required this.mainText,
    this.fontSize = 14,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
          top: topPadding,
          bottom: bottomPadding),
      child: Text(
        mainText,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
