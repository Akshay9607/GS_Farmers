import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:farmhelp/bottomNavigation/bottomNavigation.dart';

void main() => runApp(MaterialApp(
  home : TopicList(),
));

class TopicList extends StatelessWidget {
  const TopicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(212, 255, 208, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Text("Topic List"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: BottomNavigation(),
      ),
    );
  }
}
