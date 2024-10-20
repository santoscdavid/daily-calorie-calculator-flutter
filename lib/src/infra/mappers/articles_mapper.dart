import '../../domain/models/articles_model.dart';
import '../dtos/articles_dto.dart';
import 'mapper.dart';

class ArticlesMapper extends Mapper<ArticlesModel, ArticlesDto> {
  @override
  ArticlesDto toDto(ArticlesModel model) {
    throw ArticlesDto(
      id: model.id,
      goal: model.goal,
      tags: model.tags,
      title: model.title,
      author: model.author,
      content: model.content,
      imageUrl: model.imageUrl,
      publishedDate: model.publishedDate,
    );
  }

  @override
  ArticlesModel toModel(ArticlesDto dto) {
    return ArticlesModel(
      id: dto.id,
      goal: dto.goal,
      tags: dto.tags,
      title: dto.title,
      author: dto.author,
      content: dto.content,
      imageUrl: dto.imageUrl,
      publishedDate: dto.publishedDate,
    );
  }
}
