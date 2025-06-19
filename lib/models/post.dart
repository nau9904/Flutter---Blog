class Post {
  final String title;
  final String date;
  final String? imageUrl;
  final String content;
  final String? author;

  Post(
      {required this.title,
      required this.date,
      required this.imageUrl,
      required this.content,
      this.author = "Anonymous"});
}
