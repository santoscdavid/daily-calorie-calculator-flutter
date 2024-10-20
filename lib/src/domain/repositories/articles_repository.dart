import 'package:result_dart/result_dart.dart';

import '../../infra/services/http/exceptions/http_request_exception.dart';
import '../enums/objective_enum.dart';
import '../models/get_articles_model.dart';

abstract class ArticlesRepository {
  AsyncResult<GetArticlesModel, HttpRequestException> getArticles(
    ObjectiveEnum objective,
  );
}
