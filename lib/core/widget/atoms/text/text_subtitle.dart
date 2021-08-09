import 'package:flutter/material.dart';

class TextSubtitle extends StatelessWidget {
  final String text;
  const TextSubtitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.subtitle1);
  }
}
