// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historic_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HistoricController on HistoricControllerBase, Store {
  late final _$lastResultAtom =
      Atom(name: 'HistoricControllerBase.lastResult', context: context);

  @override
  ResultModel? get lastResult {
    _$lastResultAtom.reportRead();
    return super.lastResult;
  }

  @override
  set lastResult(ResultModel? value) {
    _$lastResultAtom.reportWrite(value, super.lastResult, () {
      super.lastResult = value;
    });
  }

  late final _$getLastResultAsyncAction =
      AsyncAction('HistoricControllerBase.getLastResult', context: context);

  @override
  Future<void> getLastResult() {
    return _$getLastResultAsyncAction.run(() => super.getLastResult());
  }

  @override
  String toString() {
    return '''
lastResult: ${lastResult}
    ''';
  }
}
