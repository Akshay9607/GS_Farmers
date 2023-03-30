// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'sell2.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
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
                    decoration: BoxDecoration(color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SellPage()));
                      },
                      icon: Icon(Icons.sell),
                      iconSize: 45,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(color: Colors.black),
                    // border: BorderRadius.circular(15))
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text("Select Category : "),
              SizedBox(
                height: 8,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 8,
              ),
              Text("Available Products: "),
              SizedBox(
                height: 8,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 8,
              ),
              Text("Details of seller: "),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 8,
              ),
              Text("Suggestions/ Product Details: "),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              
              Text("Preferred location of pickup: "),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField()),
              SizedBox(
                height: 8,
              ),
                  TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                
              ),
              onPressed: () { }, //button for selling
              child: Text('Order'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
