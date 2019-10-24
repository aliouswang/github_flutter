import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:github_flutter/common/redux/gsy_redux.dart';
import 'package:github_flutter/common/style/GsyColors.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:github_flutter/common/dao/user_dao.dart';

class WelcomePage extends StatefulWidget {

  static final String sName = "/";
  
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  var hadInited = false;
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(hadInited) return;
    hadInited = true;
    
    Store<GSYState> store = StoreProvider.of(context);
    Future.delayed(Duration(seconds: 2, milliseconds: 500), () {
      UserDao.getUserInfoLocal()
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return StoreBuilder(builder: (context, Store<GSYState> store) {
      double size = 200;
      return Container(
        color: Color(GSYColors.white),
        child: Stack(
          children: <Widget>[
            Center(
              child: Image(image: AssetImage('static/images/welcome.png'),),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: new Container(
                width: size,
                height: size,
                child: new FlareActor("static/file/flare_flutter_logo_.flr",
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                    animation: "Placeholder"),
              ),
            )
          ],
        ),
      );
    });
  }
}
