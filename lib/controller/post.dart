import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          // width:
          //     constraints.hasBoundedWidth ? constraints.maxWidth : null,
          // height: constraints.hasBoundedHeight
          //     ? constraints.maxHeight
          //     : null),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'poster - name',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              Text(
                'YYYY - DD . posted time',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
