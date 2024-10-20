import 'package:daily_calorie_calculator_flutter/src/domain/models/result_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../infra/services/historic/historic_service.dart';

part 'historic_controller.g.dart';

class HistoricController = HistoricControllerBase with _$HistoricController;

abstract class HistoricControllerBase with Store {
  final _historicService = Modular.get<HistoricService>();

  @observable
  ResultModel? lastResult;

  @action
  Future<void> getLastResult() async {
    final data = await _historicService.getHistoric();

    if (data != null) {
      lastResult = data;
    }
  }

  Future<void> saveResultInHistoric(ResultModel? resultModel) async {
    await _historicService.saveHistoric(resultModel);
  }
}
