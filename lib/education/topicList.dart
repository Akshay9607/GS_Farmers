import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: TopicList(),
    ));

class TopicList extends StatefulWidget {

  const TopicList({Key? key}) : super(key: key);

  @override
  State<TopicList> createState() => _TopicListState();
}

class _TopicListState extends State<TopicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(212, 255, 208, 1),
        body: SingleChildScrollView(
          // padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          child: Column(
            children: [
              // Top bap
              Container(
                color: Color.fromRGBO(146, 212, 145, 1),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    //  Back Button
                    OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(118, 164, 117, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        onPressed: () {
                          return GoRouter.of(context).go("/education");
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 16.0,
                          color: Colors.white,
                        ),
                        label: Text(
                          "",
                          style: GoogleFonts.lora(color: Colors.white),
                        )),
                    // Topic Category Title
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 50.0),
                        // width: double.infinity,
                        child:Text(
                          "Crops",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             // Topic List
             //  SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: GridB(),
              ),
            ],
          ),
        ));
  }
}


class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title" : "Rice",
      "imageSrc" : "assets/education/crops.jpg"
    },
    {
      "title" : "Wheat",
      "imageSrc" : "assets/education/crop_management.jpg"
    },
    {
      "title" : "Bajra",
      "imageSrc" : "assets/education/livestock.jpg"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    },
    {
      "title" : "Sugarcane",
      "imageSrc" : "assets/education/rainy.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 50.0,
        ),
        itemCount: gridMap.length,
        itemBuilder: (_, index){
          return Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  gridMap.elementAt(index)['title'],
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lora(
                    color: Color.fromRGBO(29, 101, 4, 1), // Sets the color to blue
                    fontSize: 18.0, // Sets the font size to 16.0 pixels
                    fontWeight: FontWeight.bold, // Sets the font weight to bold
                  ),
                ),
                IconButton(
                    onPressed: (){
                      return GoRouter.of(context).go("/topicmain");
                      },
                    icon: Icon(Icons.remove_red_eye_rounded))
              ],
            ),
          );
        });
  }
}
