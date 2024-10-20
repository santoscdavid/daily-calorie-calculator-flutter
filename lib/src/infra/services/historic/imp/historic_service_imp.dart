import 'package:daily_calorie_calculator_flutter/src/domain/models/result_model.dart';

import '../../../../core/database/hive_config.dart';
import '../historic_service.dart';

class HistoricServiceImp extends HistoricService {
  @override
  Future<ResultModel?> getHistoric() async {
    final box = await HiveBoxes.historicBox.getBox<ResultModel>();
    return box.get('historic_box');
  }

  @override
  Future<void> saveHistoric(ResultModel? resultModel) async {
    final box = await HiveBoxes.historicBox.getBox<ResultModel>();
    if (resultModel == null) {
      box.delete("historic_box");
    } else {
      box.put("historic_box", resultModel);
    }
  }
}
