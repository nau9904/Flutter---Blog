import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blog/viewmodels/postViewModel.dart';


class PostListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PostViewModel>(context);

    return Scaffold(

      body: viewModel.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: viewModel.posts.length,
              itemBuilder: (context, index) {
                final post = viewModel.posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.content),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.loadPosts(),
        child: Icon(Icons.refresh),
      ),
    );
  }
}