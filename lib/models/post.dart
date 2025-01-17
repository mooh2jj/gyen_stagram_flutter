class Post {
  final int id;
  final String title;
  final String content;
  final String writer;
  final String imageUrl;
  final List<String> files;
  final List<String> uploadFileNames;
  final String createdAt;
  final String modifiedAt;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.writer,
    required this.imageUrl,
    required this.files,
    required this.uploadFileNames,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      writer: json['writer'],
      imageUrl: json['imageUrl'] ?? '',
      files: List<String>.from(json['files'] ?? []),
      uploadFileNames: List<String>.from(json['uploadFileNames'] ?? []),
      createdAt: json['createdAt'],
      modifiedAt: json['modifiedAt'],
    );
  }
} 