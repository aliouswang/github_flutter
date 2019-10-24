import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';

final LocaleReducer = combineReducers<Locale> ([
  TypedReducer<Locale, UpdateLocaleAction>(updateLocale),
]);


Locale updateLocale(Locale locale, dynamic action) {
  locale = action.locale;
  return locale;
}

class UpdateLocaleAction {
  Locale locale;

  UpdateLocaleAction(this.locale);
}

