import 'package:flutter/material.dart';

class CustomTextBodyText extends StatelessWidget {
  final String text;

  const CustomTextBodyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
