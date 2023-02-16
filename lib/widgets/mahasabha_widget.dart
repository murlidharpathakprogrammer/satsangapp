import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';

class MahasabhaWidget extends StatelessWidget {
  const MahasabhaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final Color txtcol =
        themeState.getDarkTheme ? Colors.white70 : Colors.black;
    final Color titleColor =
        themeState.getDarkTheme ? Colors.orange : Colors.black;
    final Color cardColor = themeState.getDarkTheme
        ? Colors.white10
        : const Color.fromRGBO(255, 180, 102, 1);
    Map<String, Color> allColors = {
      'crdCol1': const Color.fromRGBO(255, 180, 102, 1),
      'crdCol2': const Color.fromRGBO(100, 180, 255, 1),
      'crdTitle1': Colors.red,
      'crdTitle2': Colors.deepPurple,
      'crdCaption1': Colors.green,
      'crdCaption2': Colors.blueAccent
    };

    List<String> members = [
      'अध्यक्ष - श्री अरविंद कुमार, (किशनगंज)',
      'उपाध्यक्ष - श्री प्रीतलाल यादव, (सहरसा)',
      'उपाध्यक्ष - श्री सतीश कुमार, (पटना)',
      'उपाध्यक्ष - ',
      'सचिव (महामंत्री) - स्वामी दिनेशानन्द जी महाराज',
      'उपमंत्री - डॉ० प्रभात कुमार',
      'सहायक मंत्री - अरुण राज शंख, जमुई',
      'सहायक मंत्री - अनिरुद्ध पंडित, पश्चिम बंगाल',
      'सहायक मंत्री - श्री मिथिलेश भगत, सहरसा',
      'कोषाध्यक्ष - श्री रामचंद्र शर्मा',
      'उप कोषाध्यक्ष - श्री रमेश प्रसाद यादव',
      'अंकेक्षक - संजय भगत (अधिवक्ता)',
      'कार्यालय मंत्री - ',
      'सहायक - ',
      'प्रचार मंत्री - ',
      'प्रवक्ता - श्री नागेश्वर विराजी "वैरागी", सुपौल',
    ];

    List<String> karyamembers = [
      'प्रो० जनार्दन यादव, (अररिया)',
      'श्री नवल किशोर सिंह, (अररिया)',
      'श्रीमती डॉली देवी (किशनगंज)',
      ' श्री सज्जन सिंह (पूर्णिया)',
      'श्री विद्यानंद महतो (खगड़िया)',
      'डॉ० चंद्रशेखर झा (मधुबनी)',
      'श्री नवीललाल (दरभंगा)',
      'रेवती रमन (दरभंगा)',
      'श्री अनिल सिंह (बेगूसराय)',
      'साध्वी मीरा (छपरा)',
      'श्री महेश प्रसाद यादव (समस्तीपुर)',
      'श्री सुबोध यादव (भागलपुर)',
      'श्री अवधेश यादव (गोड्डा), श्री देवेन्द्र यादव (गोड्डा)',
      'श्री राजेश्वर जयसवाल (किशनगंज)',
      'श्री सुबोध कुमार (शिवहर)',
      'श्री विपिन कुमार (दिल्ली)'
    ];

    List<String> padenMembers = [
      'स्वामी अरण्यानन्द जी महाराज (व्यवस्थापक, महर्षि मेंही आश्रम दुमका)',
      'स्वामी सुभाषानन्द बाबा (व्यवस्थापक, महर्षि मेंही आश्रम भागलपुर)',
      'स्वामी कमालानंद बाबा (व्यवस्थापक, महर्षि मेँहीँ धाम कुरपट्टी गोड्डा)',
      'स्वामी कल्याण बाबा (व्यवस्थापक, महर्षि मेँहीँ आश्रम पथरा सुपौल)',
      'स्वामी भवेशानन्द बाबा (व्यवस्थापक, महर्षि मेँहीँ आश्रम शरीपुर, गोड्डा',
      'स्वामी निरंजन "ब्रह्म"',
      'स्वामी दयानंद बाबा (व्यवस्थापक, महर्षि मेँहीँ आश्रम डुमरिया, मधेपुरा)',
      'स्वामी विनय बाबा (व्यवस्थापक, महर्षि मेँहीँ आश्रम फुलौत, मधेपुरा)',
      'स्वामी गुरूप्रसाद (व्यवस्थापक, महर्षि मेँहीँ योगाश्रम बैजनाथपुर, सहरसा)',
      'स्वामी कृपानंद बाबा (व्यवस्थापक, महर्षि मेँहीँ आश्रम पसराहा)'
    ];

    List<String> aamantriMembers = [
      'सर्व श्री अनुकुमार, सहरसा',
      'डॉ० विक्रमा प्रसाद, छपरा',
      'श्री दिलीप पासवान, बेगूसराय',
      'श्री सुभाष राय, समस्तीपुर',
      'श्री बैजनाथ शाह, सीतामढ़ी',
      'श्री ऋषिकेश कुमार, बांका',
      'श्री गौतम कुमार, समस्तीपुर',
      'श्री रंजीत कुशवाहा, नजफगढ़, दिल्ली',
      'श्री धनंजय कुमार, दिल्ली',
      'रघुवंश मंडल, लुधियाना',
      'श्री जगदीशचंद्र यादव, चंडीगढ़',
      'श्री सुमन कुमार, कपूरथला',
      '------------, जलंधर',
      '------------, जलंधर',
      'श्री रंजन पासवान, सहरसा',
      'श्री कमलदेव यादव, बकिया, कटिहार',
      'श्री श्याम प्रसाद यादव, हरिपुर, बांका',
      'श्री किशोरी पोद्दार, देवघर',
      'श्री पंकज झा, देवघर',
      'श्री गोविंद कुमार (प्रमुख), शिवाजीनगर, समस्तीपुर',
      'श्री तरुण कुमार, मधेपुरा',
      'श्री मोहित लाल कामती, नेपाल',
      'श्री चंद्रभानु प्रताप, अमेरिका',
      'श्री एडम जंपा, मॉरीशस'
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          // screen title
          Card(
            // elevation: 5,
            shadowColor: Colors.red,
            color: Colors.amber,
            // color: allColors['crdCol2'],
            child: SizedBox(
              width: double.infinity,
              height: h / 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text(
                      'अखिल राष्ट्रीय संतमत समिति',
                      style: TextStyle(
                          fontSize: 30, color: allColors['crdTitle2']),
                    ),
                    Text(
                      'बैजनाथपुर, सहरसा (बिहार)',
                      style: TextStyle(
                          fontSize: 20, color: allColors['crdTitle2']),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // chart images
          Card(
            color: Colors.amberAccent.shade100,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(children: [
                        Center(
                          child: SizedBox(
                            width: 180,
                            height: 180,
                            child: FancyShimmerImage(
                              imageUrl:
                                  "https://ik.imagekit.io/imgktmdp/monks/profile/download.png",
                              shimmerHighlightColor: Colors.amber,
                              errorWidget: const Icon(
                                Icons.person,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "महर्षि योगनन्द परमहंस जी महाराज\n(आचार्य)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: allColors['crdTitle2'],
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ]),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.amber,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: FancyShimmerImage(
                                      imageUrl:
                                          "https://ik.imagekit.io/imgktmdp/monks/profile/adyakshJi-removebg-preview-removebg-preview.png",
                                      errorWidget: const Padding(
                                        padding: EdgeInsets.all(38.0),
                                        child: Icon(
                                          Icons.person,
                                          size: 50,
                                        ),
                                      ),
                                      boxDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text("श्री अरविंद कुमार\n(अध्यक्ष)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: allColors['crdTitle2'],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: FancyShimmerImage(
                                      imageUrl:
                                          "https://ik.imagekit.io/imgktmdp/monks/profile/mahamantri-removebg-preview__1_.png",
                                      errorWidget: const Padding(
                                        padding: EdgeInsets.all(38.0),
                                        child: Icon(
                                          Icons.person,
                                          size: 50,
                                        ),
                                      ),
                                      boxDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                    "स्वामी दिनेशानंद जी महाराज\n (सचिव, महामंत्री)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: allColors['crdTitle2'],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: FancyShimmerImage(
                                  imageUrl:
                                      "https://ik.imagekit.io/imgktmdp/monks/profile/koshadhyaksh.png",
                                  errorWidget: const Padding(
                                    padding: EdgeInsets.all(38.0),
                                    child: Icon(
                                      Icons.person,
                                      size: 50,
                                    ),
                                  ),
                                  boxDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("स्वामी रामचंद्र बाबा\n(कोषाध्यक्ष)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: allColors['crdTitle2'],
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 5,
            color: Colors.black,
          ),

          // पदाधिकारी एवं कार्यकारिणी के सदस्यगण
          Padding(
            padding:
                const EdgeInsets.only(top: 18.0, bottom: 15, left: 5, right: 5),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          "अखिल राष्ट्रीय संतमत सत्संग महासभा के पदाधिकारी एवं कार्यकारिणी के सदस्यगण ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: allColors['crdTitle2'],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: members.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: w * 0.1,
                                child: Text(
                                  '(${index + 1})',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.75,
                                child: Text(
                                  members[index],
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    // overflow: TextOverflow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 8,
            color: Colors.black,
          ),

          // कार्यकारिणी के सदस्य
          Padding(
            padding:
                const EdgeInsets.only(top: 18.0, bottom: 15, left: 5, right: 5),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          "कार्यकारिणी के सदस्य",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: allColors['crdTitle2'],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: karyamembers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: w * 0.1,
                                child: Text(
                                  '(${index + 1})',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.75,
                                child: Text(
                                  karyamembers[index],
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    // overflow: TextOverflow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 8,
            color: Colors.black,
          ),

          // पदेन सदस्य
          Padding(
            padding:
                const EdgeInsets.only(top: 18.0, bottom: 15, left: 5, right: 5),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          "पदेन सदस्य",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: allColors['crdTitle2'],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: padenMembers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: w * 0.1,
                                child: Text(
                                  '(${index + 1})',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.75,
                                child: Text(
                                  padenMembers[index],
                                  // maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    // overflow: TextOverflow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 8,
            color: Colors.black,
          ),

          // विशिष्ट आमंत्रित सदस्य
          Padding(
            padding:
                const EdgeInsets.only(top: 18.0, bottom: 15, left: 5, right: 5),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          "विशिष्ट आमंत्रित सदस्य",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: allColors['crdTitle2'],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 15),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: aamantriMembers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: w * 0.1,
                                child: Text(
                                  '(${index + 1})',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.75,
                                child: Text(
                                  aamantriMembers[index],
                                  // maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    // overflow: TextOverflow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Icon(Icons.star_border_purple500),
            ),
          )
        ],
      ),
    );
    // ]
    //   ),
    // );
  }
}