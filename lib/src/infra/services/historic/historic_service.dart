import '../../../domain/models/result_model.dart';

abstract class HistoricService {
  Future<ResultModel?> getHistoric();
  Future<void> saveHistoric(ResultModel? resultModel);
}
