import 'package:flutter/material.dart';

class rIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;

  const rIcon({
    super.key,
    required this.iconData,
    this.size = 24,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.topPadding = 0,
    this.bottomPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
          top: topPadding,
          bottom: bottomPadding),
      child: Icon(
        iconData,
        size: size,
      ),
    );
  }
}
