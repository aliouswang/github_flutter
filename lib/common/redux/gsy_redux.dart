import 'package:flutter_redux/flutter_redux.dart';
import 'package:github_flutter/common/model/User.dart';
import 'package:flutter/material.dart';
import 'package:github_flutter/common/redux/user_redux.dart';
import 'theme_redux.dart';
import 'locale_redux.dart';

class GSYState {

  User userInfo;
  ThemeData themeData;
  Locale locale;
  Locale platformLocal;

  GSYState({this.userInfo, this.themeData, this.locale});

}

GSYState appReducer(GSYState state, dynamic action) {
  return GSYState(
    userInfo: UserReducer(state.userInfo, action),
    themeData: ThemeDataReducer(state.themeData, action),
    locale: LocaleReducer(state.locale, action),
  );
}

