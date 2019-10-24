import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:github_flutter/common/config/config.dart';
import 'package:github_flutter/common/local/local_storage.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:github_flutter/common/model/User.dart';
import 'package:github_flutter/common/redux/user_redux.dart';

import 'dart:convert';
import 'dao_result.dart';

class UserDao {

  static initUserInfo(Store store) async{
    var token = await LocalStorage.get(Config.TOKEN_KEY);
    var userData = await getUserInfoLocal();
    if (userData != null && userData.result && token != null) {
      store.dispatch(UpdateUserAction(userData.data));
    }

    return DataResult(userData.data, (userData.result && (token != null)));
  }


  static getUserInfoLocal() async {
    var userText = await LocalStorage.get(Config.USER_INFO);
    if(userText != null) {
      var userMap = json.decode(userText);
      User user = User.fromJson(userMap);
      return DataResult(user, true);
    } else {
      return DataResult(null, false);
    }
}
}