import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:github_flutter/common/model/User.dart';

final UserReducer = combineReducers<User>([
  TypedReducer<User, UpdateUserAction>(_updateLoaded),
]);

User _updateLoaded(User user, action) {
  user = action.userInfo;
  return user;
}

class UpdateUserAction {
  User userInfo;

  UpdateUserAction(this.userInfo);
}