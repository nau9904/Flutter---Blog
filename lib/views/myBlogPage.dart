import 'package:blog/viewmodels/postViewModel.dart';
import 'package:blog/views/postListView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myblogpage extends StatelessWidget {
  const Myblogpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostViewModel()..loadPosts(),
      child: PostListView(),
    );
  }
}
