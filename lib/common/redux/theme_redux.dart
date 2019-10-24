import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

final ThemeDataReducer = combineReducers<ThemeData>([
  TypedReducer<ThemeData, RefreshThemeAction>(updateTheme),
]);

ThemeData updateTheme(ThemeData themeData, dynamic action) {
  themeData = action.themeData;
  return themeData;
}

class RefreshThemeAction {
  ThemeData themeData;

  RefreshThemeAction(this.themeData);
}

