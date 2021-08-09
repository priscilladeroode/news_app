import 'package:flutter/material.dart';

class TextSubtitle2 extends StatelessWidget {
  final String text;
  const TextSubtitle2({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.subtitle2);
  }
}
