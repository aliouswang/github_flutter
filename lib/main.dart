import 'package:flutter/material.dart';
import 'Fruit.dart';
import 'common/redux/gsy_redux.dart';
import 'package:redux/redux.dart';
import 'common/model/User.dart';
import 'common/utils/common_utils.dart';
import 'common/style/GsyColors.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'page/welcome_page.dart';

void main() {
  runApp(FlutterReduxApp());
}

class FlutterReduxApp extends StatelessWidget {

  final Store<GSYState> store = Store<GSYState>(
    appReducer,
    initialState: GSYState(
      userInfo: User.empty(),
      themeData: CommonUtils.getThemeData(GSYColors.primarySwatch),
        locale: Locale('zh', 'CH'),
    )
  );

  FlutterReduxApp({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(store: store, child: StoreBuilder<GSYState>(builder: (BuildContext context, Store<GSYState> store){
      return MaterialApp(
        locale: store.state.locale,
        theme: store.state.themeData,
        initialRoute: WelcomePage.sName,
        routes: {
          WelcomePage.sName: (context) {
            return WelcomePage();
          }
        },
      );
    }));
  }

}

