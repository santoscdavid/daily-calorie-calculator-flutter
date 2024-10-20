import 'package:result_dart/result_dart.dart';

import '../../../shared/utils/get_file_data.dart';
import '../../dtos/get_articles_dto.dart';
import '../../services/http/exceptions/http_request_exception.dart';
import '../articles_datasource.dart';

class ArticlesDatasourceImp extends ArticlesDatasource {
  // final HttpService _http;

  ArticlesDatasourceImp();

  @override
  AsyncResult<GetArticlesDto, HttpRequestException> getArticles() async {
    try {
      // final result = await _http.get("/cd5cc92e412c4058c90d");
      String data = await getFileData("assets/articles/articles.json");

      final articles = GetArticlesDto.fromJson(data);

      return Success(articles);
    } catch (e) {
      return Failure(HttpRequestException.unknown());
    }
  }
}
