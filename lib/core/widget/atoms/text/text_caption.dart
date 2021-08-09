import 'package:flutter/material.dart';

class TextCaption extends StatelessWidget {
  final String text;
  const TextCaption({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.caption);
  }
}
