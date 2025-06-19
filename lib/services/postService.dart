import 'package:blog/models/post.dart';

class PostService {
    Future<List<Post>> fetchPosts() async {
        //Giả lập API 2 giây
        await Future.delayed(Duration(seconds: 2));
        return [
            Post(title: 'Post 1', content: 'Noi dung post 1'),
            Post(title: 'Post 2', content: 'Noi dung post 2'),
        ];
    }
}