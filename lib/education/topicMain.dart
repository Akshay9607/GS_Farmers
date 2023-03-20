import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:farmhelp/bottomNavigation/bottomNavigation.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: TopicMain(),
    ));

class TopicMain extends StatefulWidget {
  const TopicMain({Key? key}) : super(key: key);

  @override
  State<TopicMain> createState() => _TopicMainState();
}

class _TopicMainState extends State<TopicMain> {
  final List<Pair> content = [
    Pair("h1", "Rice"),
    Pair("h2", "Introduction"),
    Pair(
      "p",
      "Oryza Sativa, it is believed, is associated with wet, humid climate, though it is not a tropical plant. It is probably a descendent of wild grass that was most likely cultivated in the foothills of the far Eastern Himalayas. Another school of thought believes that the rice plant may have originated in southern India, then spread to the north of the country and then onwards to China. It then arrived in Korea, the Philippines (about 2000 B. C.) and then Japan and Indonesia (about 1000 B. C.).",
    ),
    Pair(
      "h2",
      "History of Rice in India",
    ),
    Pair(
      "p",
      "India is an important centre of rice cultivation. The rice is cultivated on the largest areas in India. Historians believe that while the indica variety of rice was first domesticated in the area covering the foothills of the Eastern Himalayas (i.e. north-eastern India), stretching through Burma, Thailand, Laos, Vietnam and Southern China, the japonica variety was domesticated from wild rice in southern China which was introduced to India. Perennial wild rice still grow in Assam and Nepal. It seems to have appeared around 1400 BC in southern India after its domestication in the northern plains. It then spread to all the fertile alluvial plains watered by rivers. Some says that the word rice is derived from the Tamil word arisi.",
    ),
    Pair(
      "h2",
      "Climatic Requirements",
    ),
    Pair(
      "p",
      "In India rice is grown under widely varying conditions of altitude and climate. Rice cultivation in India extends from 8 to35ºN latitude and from sea level to as high as 3000 meters. Rice crop needs a hot and humid climate. It is best suited to regions which have high humidity, prolonged sunshine and an assured supply of water. The average temperature required throughout the life period of the crop ranges from 21 to 37º C. Maximum temp which the crop can tolerate 400C to 42 0C",
    ),
    Pair(
      "h2",
      "Medicinal Value",
    ),
    Pair(
      "p",
      "The immense diversity of rice germplasm is a rich source for many rice based products and is also used for treating many health related maladies such as indigestion, diabetes, arthritis, paralysis, epilepsy and give strength to pregnant and lactating mothers. Ancient Ayurvedic literature testify the medicinal and curative properties of different types of rice grown in India. Medicinal rice varieties like Kanthi Banko (Chhattisgarh), Meher, Saraiphul & Danwar (Orissa), Atikaya & Kari Bhatta (Karnataka), are very common in India. Few varieties cultivated in restricted pockets of Kerala for their medical properties e.g. Chennellu, Kunjinellu, Erumakkari & Karuthachembavu etc.",
    ),
    Pair(
      "h2",
      "Crop Production Practices",
    ),
    Pair(
      "p",
      "In India Rice is mainly grown in two types of soils i.e., (i) uplands and (ii) low lands. The method of cultivation of rice in a particular region depends largely on factors such as situation of land, type of soils, irrigation facilities, availability of labourers intensity and distribution of rainfalls. The crop of rice is grown with the following methodsDry or Semi-dry upland cultivationBroadcasting the seedSowing the seed behind the plough or drillingWet or lowland cultivationTransplanting in puddled fields. Broadcasting sprouted seeds in puddled fields",
    ),
    Pair(
      "h2",
      "Selection of Seeds",
    ),
    Pair("p",
        "The use of quality seeds in cultivation of rice is an important factor to get better crop yield. Therefore, proper care has to be taken in selecting seeds of the best quality. Much of the success in raising the healthy seedlings depends on the quality of seed. Seeds intended for sowing should satisfy the following requirements"),
    Pair("p",
        "The seed should belong to the proper variety, which is proposed to be grown."),
    Pair("p",
        "The seed should be clean and free from obvious mixtures of other seeds"),
    Pair("p", "The seed should be mature, well developed and plump in size")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                          return GoRouter.of(context).go("/topiclist");
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 16.0,
                          color: Colors.white,
                        ),
                        label: Text(
                          "",
                          style: TextStyle(color: Colors.white),
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
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                    
                    children : content.map((c)
                    {
                      if(c.tag == "h1"){
                        return Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  c.value,
                                  // textAlign: TextAlign.start, // Align text to the start (left)
                                  style: GoogleFonts.lora(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                        );
                      }else if(c.tag == "h2"){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  c.value,
                                  // textAlign: TextAlign.start, // Align text to the start (left)
                                  style: GoogleFonts.lora(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                          ),
                        );
                      }else if(c.tag == "h3"){
                        return Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                c.value,
                                textAlign: TextAlign.justify, // Align text to the start (left)
                                style: GoogleFonts.lora(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                        );
                      }else{
                        return Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  c.value,
                                  // textAlign: TextAlign.start, // Align text to the start (left)
                                  style: GoogleFonts.lora(
                                    fontSize: 16.0,
                                    height: 1.5,
                                      // letterSpacing : 1.2,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                        );
                      }

                    }).toList()),
              ),
              SizedBox(
                height: 60.0,
              )
            ],
          ),
        ));
  }
}

class Pair {
  String tag = "";
  String value = "";

  Pair(String tag, String value) {
    this.tag = tag;
    this.value = value;
  }
}
