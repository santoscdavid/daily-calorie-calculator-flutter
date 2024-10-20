import 'dart:convert';

class ArticlesDto {
  final int id;
  final String goal;
  final List<String> tags;
  final String title;
  final String author;
  final String content;
  final String imageUrl;
  final String publishedDate;

  ArticlesDto({
    required this.id,
    required this.goal,
    required this.tags,
    required this.title,
    required this.author,
    required this.content,
    required this.imageUrl,
    required this.publishedDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'goal': goal,
      'tags': tags,
      'title': title,
      'author': author,
      'content': content,
      'imageUrl': imageUrl,
      'publishedDate': publishedDate,
    };
  }

  factory ArticlesDto.fromMap(Map<String, dynamic> map) {
    return ArticlesDto(
      id: map['id'] ?? '',
      goal: map['goal'] ?? '',
      tags: List<String>.from(
        (map['tags'] as List).map((e) => e),
      ),
      title: map['title'] ?? '',
      author: map['author'] ?? '',
      content: map['content'] ?? '',
      imageUrl: map['image_url'] ?? '',
      publishedDate: map['published_date'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ArticlesDto.fromJson(String source) =>
      ArticlesDto.fromMap(json.decode(source));
}
