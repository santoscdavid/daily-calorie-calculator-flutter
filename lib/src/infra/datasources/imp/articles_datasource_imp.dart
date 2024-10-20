import 'package:result_dart/result_dart.dart';

import '../../../domain/enums/objective_enum.dart';
import '../../../shared/utils/get_file_data.dart';
import '../../dtos/get_articles_dto.dart';
import '../../services/http/exceptions/http_request_exception.dart';
import '../articles_datasource.dart';

class ArticlesDatasourceImp extends ArticlesDatasource {
  // final HttpService _http;

  ArticlesDatasourceImp();

  @override
  AsyncResult<GetArticlesDto, HttpRequestException> getArticles(
    ObjectiveEnum objective,
  ) async {
    try {
      // final result = await _http.get("/cd5cc92e412c4058c90d");
      String data = await getFileData("assets/articles/articles.json");

      var articlesDto = GetArticlesDto.fromJson(data);

      articlesDto = articlesDto.copyWith(
        articles: articlesDto.articles.where((element) {
          if (objective == ObjectiveEnum.GAIN) {
            return element.goal == "weight_gain";
          } else {
            return element.goal == "weight_loss";
          }
        }).toList(),
      );

      return Success(articlesDto);
    } catch (e) {
      return Failure(HttpRequestException.unknown());
    }
  }
}
