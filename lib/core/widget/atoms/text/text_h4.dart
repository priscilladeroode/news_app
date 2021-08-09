import 'package:flutter/material.dart';

class TextH4 extends StatelessWidget {
  final String text;
  const TextH4({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline4);
  }
}
