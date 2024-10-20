import 'dart:convert';

import 'articles_dto.dart';

class GetArticlesDto {
  GetArticlesDto({
    required this.articles,
  });

  final List<ArticlesDto> articles;

  Map<String, dynamic> toMap() {
    return {};
  }

  factory GetArticlesDto.fromMap(Map<String, dynamic> map) {
    return GetArticlesDto(
      articles: List<ArticlesDto>.from(
        (map['articles'] as List).map<ArticlesDto>(
          (e) => ArticlesDto.fromMap(e as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory GetArticlesDto.fromJson(String source) =>
      GetArticlesDto.fromMap(json.decode(source));

  copyWith({
    List<ArticlesDto>? articles,
  }) {
    return GetArticlesDto(
      articles: articles ?? [],
    );
  }
}
