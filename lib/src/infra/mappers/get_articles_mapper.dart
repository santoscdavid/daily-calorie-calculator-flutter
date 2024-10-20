import '../../domain/models/articles_model.dart';
import '../../domain/models/get_articles_model.dart';
import '../dtos/articles_dto.dart';
import '../dtos/get_articles_dto.dart';
import 'mapper.dart';

class GetArticlesMapper extends Mapper<GetArticlesModel, GetArticlesDto> {
  GetArticlesMapper(this._getArticlesMapper);

  final Mapper<ArticlesModel, ArticlesDto> _getArticlesMapper;

  @override
  GetArticlesDto toDto(GetArticlesModel model) {
    throw GetArticlesDto(
      articles: _getArticlesMapper.toDtoList(model.articles),
    );
  }

  @override
  GetArticlesModel toModel(GetArticlesDto dto) {
    return GetArticlesModel(
      articles: _getArticlesMapper.toModelList(dto.articles),
    );
  }
}
