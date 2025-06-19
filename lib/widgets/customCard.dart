import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String postTitle;
  final String postContent;
  final String postDate;
  final String? postImageUrl;
  final String postAuthor;
  const CustomCard(
      {required this.postTitle,
      required this.postContent,
      required this.postDate,
      this.postImageUrl,
      required this.postAuthor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            print('Blog post tapped: $postTitle');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (postImageUrl != null)
                Image.network(postImageUrl!)
              else
                const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  postTitle,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(postContent),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Posted by $postAuthor on $postDate',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ),
            ],
          ),
        ));
  }
}
