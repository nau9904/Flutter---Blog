import 'package:flutter/material.dart';
import 'package:blog/viewmodels/postViewModel.dart';

class Myblogpage extends StatelessWidget {
  const Myblogpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: PostViewModel()),
    );
  }
}
