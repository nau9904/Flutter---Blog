import 'package:blog/viewmodels/postViewModel.dart';
import 'package:blog/widgets/customCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                return CustomCard(
                    postTitle: post.title,
                    postContent: post.content,
                    postDate: post.date,
                    postAuthor: post.author!,
                    postImageUrl: post.imageUrl);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.loadPosts(),
        child: Icon(Icons.refresh, color: Colors.green),
        backgroundColor: Colors.pink[300],
      ),
    );
  }
}
