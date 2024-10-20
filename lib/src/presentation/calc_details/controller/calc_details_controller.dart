import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/enums/objective_enum.dart';
import '../../../domain/models/get_articles_model.dart';
import '../../../domain/repositories/articles_repository.dart';

part 'calc_details_controller.g.dart';

class CalcDetailsController = CalcDetailsControllerBase
    with _$CalcDetailsController;

abstract class CalcDetailsControllerBase with Store {
  final _articlesRepository = Modular.get<ArticlesRepository>();

  @observable
  bool loading = false;

  @observable
  bool requestError = false;

  @observable
  GetArticlesModel? articlesModel;

  @action
  Future<void> getArticles(ObjectiveEnum objective) async {
    loading = true;

    try {
      final result = await _articlesRepository.getArticles(objective);

      result.fold(
        (success) {
          articlesModel = success;
          loading = false;
          return;
        },
        (failure) {
          requestError = true;
          loading = false;
          return;
        },
      );
    } catch (e) {
      requestError = true;
      loading = false;
      return;
    }
  }
}
