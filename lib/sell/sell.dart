// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'order.dart';

// class SellPage extends StatefulWidget {
//   const SellPage({super.key});

//   @override
//   State<SellPage> createState() => SellPageState();
// }

// class SellPageState extends State<SellPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             "Share",
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(12),
//         color: Colors.amberAccent,
//         child: Column(
//           children: <Widget>[
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   decoration: BoxDecoration(color: Colors.white),
//                   child: IconButton(
//                     onPressed: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => OrderPage()));
//                     },
//                     icon: Icon(Icons.money),
//                     iconSize: 45,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   decoration: BoxDecoration(color: Colors.black),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.01,
//             ),
//             Text("Select Category : "),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: TextField()),
//             SizedBox(
//               height: 10,
//             ),
//             Text("Select Category"),
//             SizedBox(
//               height: 10,
//             ),
//             Text("Select Category"),
//             Text("Select Category"),
//           ],
//         ),
//       ),
//     );
//   }
// }