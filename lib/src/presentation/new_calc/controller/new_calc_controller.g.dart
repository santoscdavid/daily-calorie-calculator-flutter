// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_calc_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewCalcController on NewCalcControllerBase, Store {
  late final _$calcModelAtom =
      Atom(name: 'NewCalcControllerBase.calcModel', context: context);

  @override
  CalcModel get calcModel {
    _$calcModelAtom.reportRead();
    return super.calcModel;
  }

  @override
  set calcModel(CalcModel value) {
    _$calcModelAtom.reportWrite(value, super.calcModel, () {
      super.calcModel = value;
    });
  }

  late final _$NewCalcControllerBaseActionController =
      ActionController(name: 'NewCalcControllerBase', context: context);

  @override
  void incrementAge() {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.incrementAge');
    try {
      return super.incrementAge();
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementAge() {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.decrementAge');
    try {
      return super.decrementAge();
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementWeight() {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.incrementWeight');
    try {
      return super.incrementWeight();
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWeight() {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.decrementWeight');
    try {
      return super.decrementWeight();
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeight(int newValue) {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.setHeight');
    try {
      return super.setHeight(newValue);
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGender(GenderEnum newValue) {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.setGender');
    try {
      return super.setGender(newValue);
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLevelActivity(ActivityLevelEnum newValue) {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.setLevelActivity');
    try {
      return super.setLevelActivity(newValue);
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObjective(ObjectiveEnum newValue) {
    final _$actionInfo = _$NewCalcControllerBaseActionController.startAction(
        name: 'NewCalcControllerBase.setObjective');
    try {
      return super.setObjective(newValue);
    } finally {
      _$NewCalcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
calcModel: ${calcModel}
    ''';
  }
}
