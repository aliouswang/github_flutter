import 'package:flutter/material.dart';
import 'package:github_flutter/common/localization/default_localizations.dart';
import 'package:github_flutter/common/style/gsy_string_base.dart';

class CommonUtils {

  static getThemeData(Color color) {
    return ThemeData(primaryColor: color, platform: TargetPlatform.android);
  }

  static GSYStringBase getLocal(BuildContext context) {
    return GSYLocalizations.of(context).currentLocalized;
  }

}