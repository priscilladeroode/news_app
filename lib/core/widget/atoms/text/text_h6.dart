import 'package:flutter/material.dart';

class TextH6 extends StatelessWidget {
  final String text;
  const TextH6({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline6);
  }
}
