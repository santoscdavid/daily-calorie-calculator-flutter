// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalcDetailsController on CalcDetailsControllerBase, Store {
  late final _$loadingAtom =
      Atom(name: 'CalcDetailsControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$requestErrorAtom =
      Atom(name: 'CalcDetailsControllerBase.requestError', context: context);

  @override
  bool get requestError {
    _$requestErrorAtom.reportRead();
    return super.requestError;
  }

  @override
  set requestError(bool value) {
    _$requestErrorAtom.reportWrite(value, super.requestError, () {
      super.requestError = value;
    });
  }

  late final _$articlesModelAtom =
      Atom(name: 'CalcDetailsControllerBase.articlesModel', context: context);

  @override
  GetArticlesModel? get articlesModel {
    _$articlesModelAtom.reportRead();
    return super.articlesModel;
  }

  @override
  set articlesModel(GetArticlesModel? value) {
    _$articlesModelAtom.reportWrite(value, super.articlesModel, () {
      super.articlesModel = value;
    });
  }

  late final _$getArticlesAsyncAction =
      AsyncAction('CalcDetailsControllerBase.getArticles', context: context);

  @override
  Future<void> getArticles(ObjectiveEnum objective) {
    return _$getArticlesAsyncAction.run(() => super.getArticles(objective));
  }

  @override
  String toString() {
    return '''
loading: ${loading},
requestError: ${requestError},
articlesModel: ${articlesModel}
    ''';
  }
}
