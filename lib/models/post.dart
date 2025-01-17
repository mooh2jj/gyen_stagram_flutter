class Post {
  final int id;
  final String title;
  final String content;
  final String writer;
  final String imageUrl;
  final String createdAt;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.writer,
    required this.imageUrl,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      writer: json['writer'],
      imageUrl: json['imageUrl'] ?? '',
      createdAt: json['createdAt'],

    );
  }
} 