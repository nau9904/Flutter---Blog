import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? content;

  const CustomText({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content ?? '',
      style: const TextStyle(
        fontSize: 16.0,
        height: 1.5,
        color: Colors.black87,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
