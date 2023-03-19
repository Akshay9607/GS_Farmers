import 'package:farmhelp/education/category.dart';
import 'package:flutter/material.dart';
import 'package:farmhelp/education/topicList.dart';
import 'package:farmhelp/bottomNavigation/bottomNavigation.dart';
void main() {
  runApp(
      MaterialApp(
        initialRoute: '/topiclist',
        routes: {
          //Home page not yet decided
          "/" : (context) => Home(),
          "/educaiton" : (context) => EducationCategory(),
          "/topiclist" : (context) => TopicList(),
        },
  ));
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color.fromRGBO(212, 255, 208, 1),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: Text("Home Page is Not decided yet")
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: BottomNavigation(),
        )
    );
  }
}
