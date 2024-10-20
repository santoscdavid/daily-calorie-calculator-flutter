import 'package:daily_calorie_calculator_flutter/src/infra/datasources/imp/articles_datasource_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/domain/models/articles_model.dart';
import 'src/domain/models/get_articles_model.dart';
import 'src/domain/repositories/articles_repository.dart';
import 'src/infra/datasources/articles_datasource.dart';
import 'src/infra/dtos/articles_dto.dart';
import 'src/infra/dtos/get_articles_dto.dart';
import 'src/infra/mappers/articles_mapper.dart';
import 'src/infra/mappers/get_articles_mapper.dart';
import 'src/infra/mappers/mapper.dart';
import 'src/infra/repositories/articles_repository_imp.dart';
import 'src/infra/services/http/http_service.dart';
import 'src/infra/services/http/imp/http_service_imp.dart';
import 'src/presentation/calc_details/calc_details_page.dart';
import 'src/presentation/calc_details/controller/calc_details_controller.dart';
import 'src/presentation/historic/historic_page.dart';
import 'src/presentation/new_calc/controller/new_calc_controller.dart';
import 'src/presentation/new_calc/new_calc_page.dart';

class MainModule extends Module {
  // Injeção de depedências do aplicativo
  @override
  void binds(i) {
    i.add<HttpService>(
      () => HttpServiceImp(baseUrl: "https://api.npoint.io"),
    );
    i.add<Mapper<ArticlesModel, ArticlesDto>>(
      ArticlesMapper.new,
    );
    i.add<Mapper<GetArticlesModel, GetArticlesDto>>(
      GetArticlesMapper.new,
    );
    i.addSingleton<ArticlesDatasource>(
      ArticlesDatasourceImp.new,
    );
    i.addSingleton<ArticlesRepository>(
      ArticlesRepositoryImp.new,
    );
    i.addSingleton<NewCalcController>(
      NewCalcController.new,
    );
    i.addSingleton<CalcDetailsController>(
      CalcDetailsController.new,
    );
  }

  // Rotas do aplicativo
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const NewCalcPage(),
      transition: TransitionType.leftToRight,
    );
    r.child(
      '/historic',
      child: (context) => const HistoricPage(),
      transition: TransitionType.leftToRight,
    );
    r.child(
      '/calc-details',
      child: (context) => CalcDetailsPage(resultModel: r.args.data),
      transition: TransitionType.leftToRight,
    );
  }
}
