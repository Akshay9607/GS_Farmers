import 'package:farmhelp/education/category.dart';
import 'package:farmhelp/education/topicMain.dart';
import 'package:farmhelp/personalization/crop_recommend.dart';
import 'package:farmhelp/personalization/prediction.dart';
import 'package:farmhelp/sell/sell2.dart';
import 'package:farmhelp/store/store.dart';
import 'package:flutter/material.dart';
import 'package:farmhelp/education/topicList.dart';
import 'package:farmhelp/bottomNavigation/bottomNavigation.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
    builder: (BuildContext context, GoRouterState state, Widget child) {
      return Scaffold(
        body: child,
        bottomNavigationBar: BottomNavigation(),
      );
    },
    routes: [
      GoRoute(
        path: '/sell',
        builder: (context, state) => SellPage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => EducationCategory(),
      ),
      GoRoute(
        path: '/topiclist',
        builder: (context, state) => TopicList(),
      ),
      GoRoute(
        path: '/topicmain',
        builder: (context, state) => TopicMain(),
      ),
      GoRoute(
        path: '/recommend',
        builder: (context, state) => Crop_Recommend(),
      ),
      GoRoute(
        path: '/yieldPredict',
        builder: (context, state) => Prediction(),
      ),
      GoRoute(
        path: '/store',
        builder: (context, state) => Store(),
      ),
    ],
  )
]);

void main() {
  runApp(MaterialApp.router(
    // initialRoute: '/topiclist',
    routerConfig: _router,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(212, 255, 208, 1),
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          child: Text("Home Page is Not decided yet")),
    );
  }
}
