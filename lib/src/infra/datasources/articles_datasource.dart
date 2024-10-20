import 'package:result_dart/result_dart.dart';

import '../dtos/get_articles_dto.dart';
import '../services/http/exceptions/http_request_exception.dart';

abstract class ArticlesDatasource {
  AsyncResult<GetArticlesDto, HttpRequestException> getArticles();
}
