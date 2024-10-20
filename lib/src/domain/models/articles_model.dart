class ArticlesModel {
  final int id;
  final String goal;
  final List<String> tags;
  final String title;
  final String author;
  final String content;
  final String imageUrl;
  final String publishedDate;

  ArticlesModel({
    required this.id,
    required this.goal,
    required this.tags,
    required this.title,
    required this.author,
    required this.content,
    required this.imageUrl,
    required this.publishedDate,
  });
}
