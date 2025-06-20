import 'package:blog/viewmodels/post_view_model.dart';
import 'package:blog/views/post_list_view.dart';
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
