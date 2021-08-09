import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;
  const TextBody({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyText1);
  }
}
