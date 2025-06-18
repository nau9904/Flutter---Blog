import 'package:blog/controller/post.dart';
import 'package:flutter/material.dart';

class Postpage extends StatelessWidget {
  const Postpage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth;
    if (screenWidth < 800) {
      // Mobile
      containerWidth = screenWidth * 0.8;
    } else if (screenWidth < 1300) {
      // Tablet
      containerWidth = screenWidth * 0.7;
    } else {
      // Desktop / Large Web
      containerWidth = screenWidth * 0.65;
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: containerWidth,
          decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2.0, color: const Color(0xFF000000)),
                left: BorderSide(width: 1.0, color: const Color(0xFF808080)),
                right: BorderSide(width: 1.0, color: const Color(0xFF808080)),
                bottom: BorderSide(width: 1.0, color: const Color(0xFF808080))),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Post(), Post()],
          ),
        );
      },
    );
  }
}
