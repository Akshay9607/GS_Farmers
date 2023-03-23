import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
void main() {
  runApp(
      MaterialApp(
        home: BottomNavigation(),
      ));
}


class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: (){
              // Navigator.pushNamed(context, "/");
              GoRouter.of(context).go("/");
            },
          ),
          IconButton(
            icon: Icon(Icons.book_outlined),
            onPressed: (){
              GoRouter.of(context).go("/education");
            },
          ),
          IconButton(
            icon: Icon(Icons.store_mall_directory_outlined),
            onPressed: (){
              GoRouter.of(context).go("/store");
            },
          ),
          IconButton(
            icon: Icon(Icons.image_search),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
