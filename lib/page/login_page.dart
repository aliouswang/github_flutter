import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:github_flutter/common/redux/gsy_redux.dart';
import 'package:github_flutter/common/style/GsyColors.dart';
import 'package:github_flutter/widget/gsy_input_widget.dart';
import 'package:github_flutter/common/utils/common_utils.dart';
import 'package:github_flutter/common/localization/default_localizations.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _userName = "";
  var _password = "";

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreBuilder(builder: (context, Store<GSYState> store) {
      return Scaffold(
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Center(
            child: SafeArea(child:
              SingleChildScrollView(
                child: Card(
                  elevation: 5.0,
                  color: Color(GSYColors.cardWhite),
                  margin: EdgeInsets.all(30.0),
                  child: Padding(padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image(
                          image: AssetImage(GSYIcons.DEFAULT_USER_ICON),
                          width: 90.0,
                          height: 90.0,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        GSYInputWidget(
                          hintText: CommonUtils.getLocal(context).login_username_hint_text,
                          iconData: GSYIcons.LOGIN_USER,
                          controller: _userController,
                          onChanged: (value) {
                            _userName = value;
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        GSYInputWidget(
                          hintText: CommonUtils.getLocal(context).login_password_hint_text,
                          iconData: GSYIcons.LOGIN_PW,
                          controller: _pwController,
                          onChanged: (value) {
                            _password = value;
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ),
          ),
        ),
      );
    });
  }
}
