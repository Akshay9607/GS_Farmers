import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:farmhelp/bottomNavigation/bottomNavigation.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home : EducationCategory(),
));

class EducationCategory extends StatelessWidget {
  const EducationCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(212, 255, 208, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Search box
            Container(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(146, 212, 145, 1),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Educate,",
                    style: GoogleFonts.lora(
                      color: Colors.white, // Sets the color to blue
                      fontSize: 25.0, // Sets the font size to 16.0 pixels
                      fontWeight: FontWeight.bold, // Sets the font weight to bold
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "yourself here",
                    style: GoogleFonts.lora(
                      color: Colors.white, // Sets the color to blue
                      fontSize: 20.0, // Sets the font size to 16.0 pixels
                      fontWeight: FontWeight.w100, // Sets the font weight to bold
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextField(
                    style: GoogleFonts.lora(
                      color: Color.fromRGBO(183, 183, 183, 1), // Sets the text color to black
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: GoogleFonts.lora(
                        color: Color.fromRGBO(197, 197, 199, 1), // Sets the hint text color to grey
                      ),
                      filled: true, // Fills the background with a color
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // Sets a border radius of 30.0 pixels
                        borderSide: BorderSide.none, // Removes the border line
                      ),
                      suffixIcon: Icon(
                        Icons.search, // Sets the search icon as the suffix icon
                        color: Color.fromRGBO(183, 183, 183, 1),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            // Education Category Title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Education categories",
                style: GoogleFonts.lora(
                  color: Color.fromRGBO(29, 101, 4, 1), // Sets the color to blue
                  fontSize: 25.0, // Sets the font size to 16.0 pixels
                  fontWeight: FontWeight.bold, // Sets the font weight to bold
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: GridB(),
            ),
          ],
        ),
      ),
    );
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
      "title" : "Crops",
      "imageSrc" : "assets/education/crops.jpg"
    },
    {
      "title" : "Crop Management",
      "imageSrc" : "assets/education/crop_management.jpg"
    },
    {
      "title" : "Weather Forecast",
      "imageSrc" : "assets/education/livestock.jpg"
    },
    {
      "title" : "Livestock",
      "imageSrc" : "assets/education/rainy.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        mainAxisExtent: 170.0,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index){
      return  InkWell(
        onTap: (){
          return GoRouter.of(context).go("/topiclist");
        },
        child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(gridMap.elementAt(index)['imageSrc']),
                  width: 150.0,
                  height: 110.0,
                ),
                Text(
                  gridMap.elementAt(index)['title'],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lora(
                      color: Color.fromRGBO(29, 101, 4, 1), // Sets the color to blue
                      fontSize: 15.0, // Sets the font size to 16.0 pixels
                      fontWeight: FontWeight.bold, // Sets the font weight to bold
                    ),
                )
              ],
            ),
          ),
      );
    });
  }
}
