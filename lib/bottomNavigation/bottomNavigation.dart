import 'package:flutter/material.dart';
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
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.book_outlined),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.store_mall_directory_outlined),
            onPressed: (){},
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
