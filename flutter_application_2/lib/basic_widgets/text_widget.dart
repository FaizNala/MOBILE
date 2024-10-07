import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  final String text;

  const MyTextWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }
}
