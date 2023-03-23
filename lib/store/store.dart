import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: Store(),
));

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final urlImages = [
      "https://images.pexels.com/photos/1196516/pexels-photo-1196516.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/7890171/pexels-photo-7890171.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(212, 255, 208, 1),
      body: Container(

        child: SingleChildScrollView(
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
                          return GoRouter.of(context).go("/");
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
                          "Store",
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
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search box
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: TextField(
                        style: GoogleFonts.lora(
                          color: Color.fromRGBO(183, 183, 183, 1), // Sets the text color to black
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search Product here',
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
                    ),
                    // Image Carousel Slider
                    CarouselSlider.builder(
                        itemCount: urlImages.length,
                        itemBuilder: (context, index, realIndex){
                          final urlImage = urlImages[index];

                          return buildImage(urlImage, index);
                        },
                        options: CarouselOptions(height: 150)
                    ),
                    //  Product title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Text(
                        "All Products here,",
                        style: GoogleFonts.lora(
                          color: Color.fromRGBO(1, 123, 78, 1), // Sets the color to blue
                          fontSize: 25.0, // Sets the font size to 16.0 pixels
                          fontWeight: FontWeight.bold, // Sets the font weight to bold
                        ),
                      ),
                    ),
                  //  Product List
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 0, 24, 24),
                      child: GridB(),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildImage(String urlImage, int index) => Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color.fromRGBO(146, 212, 145, 1),
    ),
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.network(
        urlImage,
        fit : BoxFit.fitWidth
      ),
    ),
  );
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title" : "Tomato",
      "imageSrc" : "assets/store/tomato.png",
      "price" : 12.0,
    },
    {
      "title" : "Carrot",
      "imageSrc" : "assets/store/carrot.png",
      "price" : 23.0,
    },
    {
      "title" : "Cabbage",
      "imageSrc" : "assets/store/cabbage.png",
      "price" : 15.0,
    },
    {
      "title" : "Patato",
      "imageSrc" : "assets/store/potato.png",
      "price" : 20.0,
    },
    {
      "title" : "Corn",
      "imageSrc" : "assets/store/corn.png",
      "price" : 18.0,
    },
    {
      "title" : "Cucumber",
      "imageSrc" : "assets/store/cucumber.png",
      "price" : 14.0,
    },
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
          mainAxisExtent: 215.0,
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
                  //  Product Image
                  Image.network(
                    gridMap.elementAt(index)['imageSrc'],
                    width: 150.0,
                    height: 110.0,
                  ),
                  //  Product Title
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      gridMap.elementAt(index)['title'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lora(
                        color: Color.fromRGBO(29, 101, 4, 1), // Sets the color to blue
                        fontSize: 20.0, // Sets the font size to 16.0 pixels
                        fontWeight: FontWeight.bold, // Sets the font weight to bold
                      ),
                    ),
                  ),
                //  Product Price and Order button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Price
                        Text(
                            "${gridMap.elementAt(index)['price']}₹",
                            style: GoogleFonts.lora(
                            color: Color.fromRGBO(1, 123, 78, 1), // Sets the color to blue
                            fontSize: 30.0, // Sets the font size to 16.0 pixels
                            fontWeight: FontWeight.bold, // Sets the font weight to bold
                            ),
                        ),
                        ElevatedButton(
                        onPressed: () {
                        // Add your button press event here
                        },
                          style:ElevatedButton.styleFrom(
                            primary: Colors.purpleAccent,
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        child: Text('Order'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
