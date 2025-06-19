import 'package:blog/models/post.dart';

class PostService {
  final List<Map<String, String>> posts = [
    {
      'title': 'Buổi gặp mặt đầu năm',
      'date': '01/01/2025',
      'image': 'https://via.placeholder.com/400x200',
      'content': 'Content of the first post 1 goes here.',
    },
    {
      'title': 'Dã ngoại cuối tuần',
      'date': '15/03/2025',
      'image': 'https://via.placeholder.com/400x200',
      'content': 'Content of the first post 2 goes here.',
    },
  ];
  Future<List<Post>> fetchPosts() async {
    //Giả lập API 2 giây
    await Future.delayed(Duration(seconds: 1));
    return [
      for (var post in posts)
        Post(
          title: post['title'] ?? 'No Title',
          date: post['date'] ?? 'No Date',
          imageUrl: post['image'] ?? 'https://via.placeholder.com/400x200',
          content: post['content'] ?? 'No Content',
        )
    ];
  }
}
