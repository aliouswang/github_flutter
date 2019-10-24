import 'package:flutter/material.dart';
import 'package:github_flutter/common/style/gsy_string_base.dart';
import 'package:github_flutter/common/style/gsy_string_en.dart';
import 'package:github_flutter/common/style/gsy_string_zh.dart';

class GSYLocalizations {
  final Locale locale;

  GSYLocalizations(this.locale);

  static Map<String, GSYStringBase> _localizaedValues = {
    "en" : GSYStringEn(),
    "zh" : GSYStringZh()
  };

  GSYStringBase get currentLocalized {
    if (_localizaedValues.containsKey(locale.languageCode)) {
      return _localizaedValues[locale.languageCode];
    } else return _localizaedValues["en"];
  }

  static GSYLocalizations of(BuildContext context) {
    return Localizations.of(context, GSYLocalizations);
  }

}