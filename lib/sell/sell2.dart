import 'package:flutter/material.dart';
import 'app_export.dart';
import 'app_routes.dart';
import 'color_constant.dart';
import 'date_time_utils.dart';
import 'image_constant.dart';
import 'order.dart';
import 'size_utils.dart';
import 'app_decoration.dart';
import 'app_style.dart';
import 'custom_image_view.dart';
import 'custom_text_form_field.dart';

import 'package:flutter/material.dart';

// class SellPage() extends StatefulWidget{
//   const SellPage({super.key});

//   @override
//   State<SellPage> createState() => SellPageState();
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'order.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => SellPageState();
}

class SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Share",
            style: TextStyle(fontSize: 20),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        color: Color(0xFF83BA58),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(color: Colors.black),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OrderPage()));
                      },
                      icon: Icon(Icons.sell),
                      iconSize: 45,
                    ),
                    
                  ),
                  // Text("Sell"),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OrderPage()));
                      },
                      icon: Icon(Icons.money),
                      iconSize: 45,
                      
                    )
                    
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text("Enter Category : "),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 10,
              ),
              Text("Enter Amount : "),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 10,
              ),
              Text("Suggestions if any : "),
              
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 10,
              ),
              Text("Prefered location of pickup: "),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                
              ),
              onPressed: () { }, //button for selling
              child: Text('Sell'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
