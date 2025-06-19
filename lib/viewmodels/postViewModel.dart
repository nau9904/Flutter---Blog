import 'package:flutter/material.dart';
import 'package:blog/models/post.dart';
import 'package:blog/services/postService.dart';

class PostViewModel extends ChangeNotifier {
  final PostService _service = PostService();
  List<Post> _posts = [];
  bool _isLoading = false;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> loadPosts() async {
    _isLoading = true;
    notifyListeners();

    _posts = await _service.fetchPosts();

    _isLoading = false;
    notifyListeners();
  }
}
