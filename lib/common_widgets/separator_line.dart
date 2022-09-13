import 'package:flutter/material.dart';

class SeparatorLine extends StatelessWidget {
  final double width;
  const SeparatorLine({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: width,
      color: Colors.orangeAccent,
    );
  }
}
