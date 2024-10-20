import 'package:result_dart/result_dart.dart';

import '../../domain/enums/objective_enum.dart';
import '../../domain/models/get_articles_model.dart';
import '../../domain/repositories/articles_repository.dart';
import '../datasources/articles_datasource.dart';
import '../dtos/get_articles_dto.dart';
import '../mappers/mapper.dart';
import '../services/http/exceptions/http_request_exception.dart';

class ArticlesRepositoryImp extends ArticlesRepository {
  ArticlesRepositoryImp(
    this.datasource,
    this.mapper,
  );

  final ArticlesDatasource datasource;
  final Mapper<GetArticlesModel, GetArticlesDto> mapper;

  @override
  AsyncResult<GetArticlesModel, HttpRequestException> getArticles(
    ObjectiveEnum objective,
  ) {
    final result = datasource.getArticles(objective);

    return result.fold(
      (success) => Success(mapper.toModel(success)),
      (error) => Failure(error),
    );
  }
}
