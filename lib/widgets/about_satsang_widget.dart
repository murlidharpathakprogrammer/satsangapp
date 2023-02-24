import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import '../provider/dark_theme_provider.dart';

class AboutSantmatWidget extends StatelessWidget {
  const AboutSantmatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final Color txtcol =
        themeState.getDarkTheme ? Colors.white70 : Colors.black;
    final Color titleColor =
        themeState.getDarkTheme ? Colors.orange : Colors.black;
    final Color cardColor =
        themeState.getDarkTheme ? Colors.white10 : Colors.orange.shade100;
    FirebaseFirestore db = FirebaseFirestore.instance;

    void countDocuments() async {
      QuerySnapshot myDoc = await db.collection('Books').get();
      List<DocumentSnapshot> myDocCount = myDoc.docs;
      stdout.write(myDocCount.length); // Count of Documents in Collection
    }

    countDocuments();
    //  संतमत परिवार
    final List<Map<String, String>> santmatMonks = [
      {
        "नाम": "स्वामी लच्छन बाबा",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg",
        "जन्मतिथि": "1901 ई0",
        "दीक्षा तिथि": "1930 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "1989 ई0 "
      },
      {
        "नाम": "स्वामी बजरंगी बाबा (गुरुजी)",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg",
        "जन्मतिथि": "1903 ई0 ",
        "दीक्षा तिथि": "1934 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " 1985 ई0  "
      },
      {
        "नाम": "ब्रह्मर्षि विष्णुकान्त बाबा",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg",
        "जन्मतिथि": " 1923 ई0",
        "दीक्षा तिथि": "1942 ई0 ",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "2003 ई0 "
      },
      {
        "नाम": "संत शिशु बाबा",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg",
        "जन्मतिथि": "1920 ई0",
        "दीक्षा तिथि": "1945 ई0 ",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस ",
        "परिनिर्वाण दिवस": "1997 ई0"
      },
      {
        "नाम": "महात्मा भुजंगी बाबा ",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg",
        "जन्मतिथि": "1922 ई0",
        "दीक्षा तिथि": "1939 ई0 ",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "1999 ई0"
      },
      {
        "नाम": "संत गंगेश्वरानन्द बाबा",
        "जन्मतिथि": "1905 ई0",
        "दीक्षा तिथि": "1932 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "2002 ई0"
      },
      {
        "नाम": "संत मोती बाबा",
        "जन्मतिथि": "1912 ई0",
        "दीक्षा तिथि": "1936 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "1997 ई0"
      },
      {
        "नाम": "महर्षि दल बहादुर बाबा",
        "जन्मतिथि": "1923 ई0",
        "दीक्षा तिथि": "1950 ई0",
        "दीक्षा गुरु": " महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " 2011 ई0",
      },
      {
        "नाम": "महर्षि हरिनन्दन बाबा",
        "जन्मतिथि": "1934 ई0",
        "दीक्षा तिथि": " 1957 ई0",
        "दीक्षा गुरु": " महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी अच्युतानन्द बाबा",
        "जन्मतिथि": "1928 ई0",
        "दीक्षा तिथि": " 1947 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "",
      },
      {
        "नाम": "गुरुसेवी भगीरथ बाबा",
        "जन्मतिथि": "  1945 ई0",
        "दीक्षा तिथि": " 1966 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "महात्मा छोटेलाल बाबा",
        "जन्मतिथि": "  1952 ई0",
        "दीक्षा तिथि": "1968 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "महात्मा केदार बाबा",
        "जन्मतिथि": "  1950 ई0",
        "दीक्षा तिथि": "1968 ई0",
        "दीक्षा गुरु": " महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी कमलानन्द बाबा",
        "जन्मतिथि": "1942 ई0",
        "दीक्षा तिथि": " 1969 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी चतुरानन्द बाबा",
        "जन्मतिथि": "  1940 ई0",
        "दीक्षा तिथि": " 1966 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी वेदानन्द बाबा",
        "जन्मतिथि": "  1948 ई0",
        "दीक्षा तिथि": "1966 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "महात्मा सत्यदेव साह",
        "जन्मतिथि": "  1942 ई0",
        "दीक्षा तिथि": "1959 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": "   1999 ई0",
      },
      {
        "नाम": "स्वामी प्रमोद बाबा",
        "जन्मतिथि": "1957 ई0",
        "दीक्षा तिथि": "1972 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी व्यासानन्द बाबा",
        "जन्मतिथि": "1967 ई0",
        "दीक्षा तिथि": "1982 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी शिवानन्द ब्रह्मचारी",
        "जन्मतिथि": " 1950 ई0",
        "दीक्षा तिथि": "1973 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " ",
      },
      {
        "नाम": "स्वामी रामलाल ब्रह्मचारी",
        "जन्मतिथि": "1947 ई0",
        "दीक्षा तिथि": "1970 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " -----------",
      },
      {
        "नाम": "स्वामी भानू बाबा",
        "जन्मतिथि": "1952 ई0",
        "दीक्षा तिथि": "1979 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " -----------",
      },
      {
        "नाम": "स्वामी सत्यनारायण ब्रह्मचारी",
        "जन्मतिथि": "1958ई0",
        "दीक्षा तिथि": "1977 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " -----------",
      },
      {
        "नाम": "स्वामी विमलानन्द बाबा",
        "जन्मतिथि": "1965 ई0",
        "दीक्षा तिथि": "1975 ई0",
        "दीक्षा गुरु": "महर्षि संतसेवीजी",
        "परिनिर्वाण दिवस": " -----------",
      },
      {
        "नाम": "स्वामी सत्यानन्द बाबा",
        "जन्मतिथि": "1967 ई0",
        "दीक्षा तिथि": "1986 ई0",
        "दीक्षा गुरु": "ब्रह्मर्षि विष्णुकान्त बाबा",
        "परिनिर्वाण दिवस": " -----------",
      },
      {
        "नाम": "स्वामी स्वरूपानन्द बाबा",
        "जन्मतिथि": "1948 ई0",
        "दीक्षा तिथि": "1963 ई0",
        "दीक्षा गुरु": "महर्षि मेँहीँ परमहंस",
        "परिनिर्वाण दिवस": " -----------"
      }
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          FancyShimmerImage(
            imageUrl:
                "https://res.cloudinary.com/de9omilub/image/upload/v1672778440/satsangapp/images/vriksha_iatdb2.png",
            boxFit: BoxFit.cover,
            width: w,
            height: h,
            shimmerBaseColor: Colors.orange,
            shimmerHighlightColor: Colors.white,
            shimmerDuration: const Duration(seconds: 1),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 10,
            color: Colors.red.withOpacity(0.3),
          ),
          Container(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "संतमत परिचय",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: titleColor,
                        ),
                      ),
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                              text: "\u2022",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  " शान्ति स्थिरता वा निश्चलता को कहते हैं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "\u2022",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  " शान्ति को जो प्राप्त कर लेते हैं, सन्त कहलाते हैं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "\u2022",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: " सन्तों के मत वा धर्म को सन्तमत कहते हैं।",
                              style: TextStyle(fontStyle: FontStyle.italic))
                        ]),
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),

                  //संतमत-जबसे सृष्टि में संत हुए हैं
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                              text:
                                  '''संतमत-जबसे सृष्टि में संत हुए हैं, तबसे संतमत है। संतमत किसी एक संत के नाम पर प्रचारित मत नहीं है। विश्व में जो भी संत हो गये हैं, उन सभी संतों के मत को संतमत कहते हैं। संतमत कोई नया मत, नया धर्म, नया मजहब, नया रिलिजन (त्मसपहपवद) नहीं है। यह परम पुरातन, परम सनातन वैदिक मत है। यह वैदिक मत होते हुए भी किसी अवैदिक मत से ईर्ष्या, द्वेष, घृणा, रोष आदि नहीं करता है। संतमत सभी संतों का समान रूप से सम्मान करता है।
                                    ''',
                              style: TextStyle(fontStyle: FontStyle.italic))
                        ]),
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),

                  //  महर्षिजी की साधना-पद्धति-ब्रह्म
                  RichText(
                    text: TextSpan(
                        text:
                            '''महर्षिजी की साधना-पद्धति-ब्रह्म को प्राप्त करने के लिए महर्षि मेँहीँ परमहंसजी महाराज चार प्रकार की प्रक्रियाएँ बतलाते थे-''',
                        style: TextStyle(
                            fontSize: 18,
                            color: txtcol,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                              text: "\n1)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: " मानस जप\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "2)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: " मानस ध्यान\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "3)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: " दृष्टि-योग और\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "4)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: " सुरत-शब्द- योग (नादानुसन्धान)।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                        ]),
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),

                  //  जप-गुरु-प्रदत्त मंत्र की बारम्बार
                  RichText(
                    text: TextSpan(
                        text:
                            '''जप-गुरु-प्रदत्त मंत्र की बारम्बार इस तरह आवृत्ति करना कि मन में मंत्र रहे और मंत्र में मन रहे, जप कहलाता है।  जप तीन तरह के होते हैं-''',
                        style: TextStyle(
                            fontSize: 18,
                            color: txtcol,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 18,
                        ),
                        children: const [
                          TextSpan(
                              text: "\n(1) वाचिक जप",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  "\nवाचिक जप में मंत्र का बोल-बोलकर बारम्बार उच्चारण करते हैं। इसमें स्वयं तो सुनते ही हैं, दूसरे व्यक्ति भी सुनते हैं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "\n(2) उपांशु जप",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  "\nइस जप में मंत्र का उच्चारण धीमे स्वर में किया जाता है। इसमें जीभ और ओष्ठ हिलते हैं, स्वयं अपने कान सुनते हैं; दूसरा व्यक्ति नहीं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "\n(3) मानस जप",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  "\nइस जप में जीभ, ओंठ और कंठ नहीं हिलते हैं। मन-ही-मन मंत्र की आवृत्ति होती है। वाचिक जप से सौ गुणा अधिक उपांशु जप और उपांशु जप से हजार गुणा अधिक श्रेष्ठ मानस जप बतलाया गया है। मानस जप को जपों का राजा माना गया है। इसको फकीर लोग जिकर कहते हैं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "\n(4) मानस ध्यान",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text:
                                  "\nमानस ध्यान में चित्त ध्येेय तत्त्व पर टिका रहता है। ध्यान दो प्रकार के होते हैं-\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                        ]),
                    textAlign: TextAlign.justify,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: txtcol,
                              fontSize: 18,
                            ),
                            children: const [
                          TextSpan(
                              text: "(क) सगुण",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          TextSpan(
                              text:
                                  "\nध्यान-इष्ट के स्थूल रूप और ज्योतिर्मय विन्दु-रूप तथा अनहद नादों के ध्यान को सगुण-ध्यान कहते हैं। सगुण-ध्यान में ही मानस ध्यान आता है। इष्ट के देखे हुए स्थूल रूप को अपने मानस पटल पर हू-ब-हू उतारने की क्रिया को मानस ध्यान कहते हैं। जिन इष्ट के नाम का मानस जप करते हैं, उन्हीं के स्थूल रूप का मानस ध्यान करना चाहिए। इसको फकीर लोग फनाफिल मुर्शिद कहते हैं। मानस ध्यान में इष्ट के मनोमय रूप पर कुछ काल तक दृष्टि के स्थिर हो जाने पर दृष्टि-योग की क्रिया की जाती है।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "\n(ख) निर्गुण-ध्यान",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          TextSpan(
                              text:
                                  "\nजिस आदिशब्द से सृष्टि का विकास हुआ है, उसे सारशब्द भी कहते हैं। वह त्रयगुण-रहित होने से निर्गुण कहलाता है। उसी सारशब्द के ध्यान को निर्गुण-ध्यान कहते हैं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                        ])),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: txtcol,
                            fontSize: 18,
                          ),
                          children: const [
                        //  दृष्टियोग
                        TextSpan(
                            text: "\nदृष्टियोग",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                          text:
                              "\nदेखने की शक्ति को दृष्टि कहते हैं। दोनों आँखों की दृष्टियों को मिलाकर मिलन-स्थान पर मन को टिकाकर देखने की क्रिया को दृष्टियोग कहते हैं। इस अभ्यास से एकविन्दुता की प्राप्ति होती है, जिससे सूक्ष्म वा दिव्य दृष्टि खुल जाती है। तब साधक के अन्दर अंधकार नहीं रहता है; अपने अन्दर उसे प्रकाश-ही-प्रकाश दीखता है। दृष्टि के चार भेद हैं-जाग्रत की दृष्टि, स्वप्न की दृष्टि, मानस दृष्टि और दिव्य दृष्टि। दृष्टि के पहले तीनों भेदों का निरोध होने से मनोनिरोध होता है और दिव्य दृष्टि खुल जाती है। तेजोमय विन्दु का ध्यान परम ध्यान कहा जाता है। इसको फकीर लोग सगले नसीरा कहते हैं।\n",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        //  सुरत-शब्द-योग
                        TextSpan(
                            text: "\nसुरत-शब्द-योग",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text:
                                '''\nआँख, कान और मुँह बन्द करके केन्द्रीय शब्द को पकड़ने की क्रिया को सुरत-शब्द-योग कहते हैं।
                                        सृष्टि के पाँच मंडल हैं-स्थूल, सूक्ष्म, कारण, महाकारण और कैवल्य। इन पाँचो मंडलों के केन्द्रीय शब्द हैं। इन पाँचो केन्द्रीय शब्दों के अतिरिक्त अन्दर में विभिन्न प्रकार की असंख्य ध्वनियाँ हो रही हैं, जिन्हें अनहद नाद कहते हैं। इन अनहद नादों के बीच निचले मंडल के केन्द्रीय शब्द को क्रम-क्रम से पकड़ते हुए अन्ततः कैवल्य मंडल के केन्द्रीय शब्द-सारशब्द को पकड़ना नादानुसंधान (सुरत-शब्द-योग) का लक्ष्य है। केन्द्रीय शब्द को पकड़ने की युक्ति गुरु बतलाते हैं। दृष्टियोग पूरा होने पर और दृष्टियोग पूरा नहीं होने पर; दोनों स्थितियों में नादानुसंधान किया जा सकता है; परन्तु दोनों स्थितियों में नादानुसंधान की विधि अलग-अलग बतायी जाती है। दृष्टियोग में पूर्ण साधक को सीधे केन्द्रीय शब्द सुनाई पड़ता है और जो दृष्टियोग साधन में पूर्णता प्राप्त किये बिना नादानुसंधान करते हैं, उनके लिए यह कोई आवश्यक नहीं है कि वे शीघ्र केन्द्रीय शब्द को पकड़ ही ले।
                          सारशब्द को नादानुसंधान के द्वारा पकड़ने पर साधक उसके आकर्षण से खिंचकर परमात्म-पद को प्राप्त कर लेते हैं। तब वे दैहिक, दैविक, भौतिक-इन त्रय तापों से मुक्त हो जाते हैं; आवागमन छूट जाता है। नादानुसंधान को फकीर लोग सुलतानु उलजकार कहते हैं।\n''',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            )),
                      ])),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),

                  //  संतमत की विशेषता
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                              text: " \nसंतमत की विशेषता\n\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontSize: 25,
                              )),
                          TextSpan(
                              text: "1. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत कहता है कि एक ईश्वर की भक्ति करो। ईश्वर की प्राप्ति जब कभी होगी, तो अपने अन्दर होगी। उस ईश्वर के पास जाने का रास्ता भी एक ही है, जो दशम द्वार से आरम्भ होता है। सभी स्थूल सगुण उपासनाएँ उस रास्ते को पकड़ाने के अवलम्ब है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "2. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत की साधना का मूल उद्देश्य निर्गुण-सगुण पर परमात्मा की प्राप्ति है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "3. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत किसी मत वा पन्थ का खण्डन नहीं करता है। इसका कथन है कि कोई किसी भी पन्थ का माननेवाला हो, वह मूल को जाने। इसकी साधनाएँ आन्तरिक हैं। इसमें तिलक लगाने, माला फेरने, उपवास करने, तीर्थ-भ्रमण करने आदि पर जोर नहीं दिया जाता।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "4. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत सामाजिक समन्वय का मत है। इस मत से जाति-पाँति, ऊँच-नीच, छुआछूत आदि का भेदभाव मिटाया जाता है। इसके अनुसार सभी वर्गों और सभी जातियों के नर-नारियों को ईश्वर-भक्ति करने का समान अधिकार है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "5. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत परम प्रभु परमात्मा से मिलाने में पूरे गुरु की महत्त्वपूर्ण भूमिका मानता है। सद्गुरु की कृपा होगी, तब ही जीव माया-बन्धन से मुक्त हो सकता है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "6. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत-साधना में ज्ञान, योग और भक्ति तीनों का समन्वय है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "7. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत शंकराचार्य के अद्वैतवाद को स्वीकार करता है, जिनमें जगत् को असत्य और अद्वितीय परब्रह्म को सत्य माना गया है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "8. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " संतमत आन्तरिक साधना पर अधिक जोर देता है। यह समाज के किसी व्यक्ति की उपेक्षा नहीं करता है। यह भेद-भाव को त्यागकर परोपकार करने की शिक्षा देता है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic))
                        ]),
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                              text: " \nसंतमत की दीक्षा विधि\n\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontSize: 25,
                              )),
                          TextSpan(
                              text: "1. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " जो व्यक्ति छह माह पूर्व मांस-मछली का भोजन और नशा-सेवन छोड़ चुके हैं, उन्हें ही संतमत में दीक्षित किया जाता है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "2. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " दीक्षा-पुस्तिका में दीक्षार्थी का नाम, जाति, पेशा, धर्म, गाँव, पत्रलय, जिला लिख लेते हैं और संतमत-सिद्धांत उन्हें समझाकर उनसे तीन प्रतिज्ञाएँ करवाते हैं-"
                                  "\n(क) हम प्रतिज्ञा करते हैं/करती हैं कि संतमत की रीति-अभ्यास और उससे जो कुछ अन्तर में मालूम होगा, कभी किसी से नहीं कहेंगे/कहेंगी।"
                                  "\n(ख) हम संतमत-सिद्धांत को अच्छी तरह समझ गये/समझ गयीं, उनको हम दिल से प्यार करते रहेंगे/रहेंगी और संतमत की उन्नति में तन-मन-धन से हमेशा मददगार रहेंगे/रहेंगी।"
                                  "\n(ग) अभ्यास करने में जो शक्ति पैदा होगी, उसको बुरे कामों में खर्च नहीं करेंगे/करेंगी।"
                                  "\nइतनी प्रतिज्ञा कराने के बाद दीक्षार्थी से उनके नाम-पते के खाने में हस्ताक्षर कराये जाते हैं। जो निरक्षर हैं, उनसे एक लकीर खिंचवा ली जाती है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "3. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " दीक्षार्थी को स्नान करके पवित्र कपड़ा पहनकर और फूलों की एक माला एवं थोड़ा-सा प्रसाद अपने साथ लाना पड़ता है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "4. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " दीक्षा के दिन दीक्षा लेने के पूर्व तक निराहार रहना पड़ता है। प्रायः 9-10 बजे पूर्वाह्ण में दीक्षा दी जाती है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "5. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " परमात्मा के पास जाने की विधि (मानस जप, मानस ध्यान, दृष्टियोग और शब्द योग) दीक्षा में बतलायी जाती है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "6. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " ध्यानाभ्यास के लिए किस आसन से, कैसे और कहाँ बैठना चाहिए, यह भी दीक्षार्थी को बताया जाता है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "7. ",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " शनिवार को छोड़कर किसी भी दिन दीक्षा दी जा सकती है।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                        ]),
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: txtcol,
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                              text: " \nसंतमत में विधि-निषेध-कर्म\n\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                fontSize: 25,
                              )),
                          TextSpan(
                              text: "विधि-कर्म",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  " एक ईश्वर पर अचल विश्वास, पूर्ण भरोसा तथा उसकी प्राप्ति अपने अन्दर होगी-इसका दृढ़ निश्चय रखना, सद्गुरु की निष्कपट सेवा, सत्संग और दृढ़ ध्यानाभ्यास।\n\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "निषिद्ध-कर्म",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  " झूठ बोलना, नशा खाना, व्यभिचार करना, हिंसा करनी एवं मांस-मछली का भोजन करना और चोरी करना-इसको महर्षिजी महापाप कहते हैं। अतः ये त्याज्य कर्म हैं।\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                        ]),
                    textAlign: TextAlign.justify,
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Column(
                  //     children: [
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 20,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text: "\u2022",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       " शान्ति स्थिरता वा निश्चलता को कहते हैं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "\u2022",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       " शान्ति को जो प्राप्त कर लेते हैं, सन्त कहलाते हैं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "\u2022",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       " सन्तों के मत वा धर्म को सन्तमत कहते हैं।",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic))
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //
                  //       //संतमत-जबसे सृष्टि में संत हुए हैं
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 20,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text:
                  //                       '''संतमत-जबसे सृष्टि में संत हुए हैं, तबसे संतमत है। संतमत किसी एक संत के नाम पर प्रचारित मत नहीं है। विश्व में जो भी संत हो गये हैं, उन सभी संतों के मत को संतमत कहते हैं। संतमत कोई नया मत, नया धर्म, नया मजहब, नया रिलिजन (त्मसपहपवद) नहीं है। यह परम पुरातन, परम सनातन वैदिक मत है। यह वैदिक मत होते हुए भी किसी अवैदिक मत से ईर्ष्या, द्वेष, घृणा, रोष आदि नहीं करता है। संतमत सभी संतों का समान रूप से सम्मान करता है।
                  //                   ''',
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic))
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //
                  //       //  महर्षिजी की साधना-पद्धति-ब्रह्म
                  //       RichText(
                  //         text: TextSpan(
                  //             text:
                  //                 '''महर्षिजी की साधना-पद्धति-ब्रह्म को प्राप्त करने के लिए महर्षि मेँहीँ परमहंसजी महाराज चार प्रकार की प्रक्रियाएँ बतलाते थे-''',
                  //             style: TextStyle(
                  //                 fontSize: 18,
                  //                 color: txtcol,
                  //                 fontStyle: FontStyle.italic,
                  //                 fontWeight: FontWeight.bold)),
                  //       ),
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 20,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text: "\n1)",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text: " मानस जप\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "2)",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text: " मानस ध्यान\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "3)",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text: " दृष्टि-योग और\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "4)",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text: " सुरत-शब्द- योग (नादानुसन्धान)।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //
                  //       //  जप-गुरु-प्रदत्त मंत्र की बारम्बार
                  //       RichText(
                  //         text: TextSpan(
                  //             text:
                  //                 '''जप-गुरु-प्रदत्त मंत्र की बारम्बार इस तरह आवृत्ति करना कि मन में मंत्र रहे और मंत्र में मन रहे, जप कहलाता है।  जप तीन तरह के होते हैं-''',
                  //             style: TextStyle(
                  //                 fontSize: 18,
                  //                 color: txtcol,
                  //                 fontStyle: FontStyle.italic,
                  //                 fontWeight: FontWeight.bold)),
                  //       ),
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 18,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text: "\n(1) वाचिक जप",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       "\nवाचिक जप में मंत्र का बोल-बोलकर बारम्बार उच्चारण करते हैं। इसमें स्वयं तो सुनते ही हैं, दूसरे व्यक्ति भी सुनते हैं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "\n(2) उपांशु जप",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       "\nइस जप में मंत्र का उच्चारण धीमे स्वर में किया जाता है। इसमें जीभ और ओष्ठ हिलते हैं, स्वयं अपने कान सुनते हैं; दूसरा व्यक्ति नहीं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "\n(3) मानस जप",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       "\nइस जप में जीभ, ओंठ और कंठ नहीं हिलते हैं। मन-ही-मन मंत्र की आवृत्ति होती है। वाचिक जप से सौ गुणा अधिक उपांशु जप और उपांशु जप से हजार गुणा अधिक श्रेष्ठ मानस जप बतलाया गया है। मानस जप को जपों का राजा माना गया है। इसको फकीर लोग जिकर कहते हैं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "\n(4) मानस ध्यान",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       "\nमानस ध्यान में चित्त ध्येेय तत्त्व पर टिका रहता है। ध्यान दो प्रकार के होते हैं-\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //
                  //       Padding(
                  //         padding: const EdgeInsets.only(left: 18.0),
                  //         child: RichText(
                  //             text: TextSpan(
                  //                 style: TextStyle(
                  //                   color: txtcol,
                  //                   fontSize: 18,
                  //                 ),
                  //                 children: const [
                  //               TextSpan(
                  //                   text: "(क) सगुण",
                  //                   style: TextStyle(
                  //                     fontSize: 20,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       "\nध्यान-इष्ट के स्थूल रूप और ज्योतिर्मय विन्दु-रूप तथा अनहद नादों के ध्यान को सगुण-ध्यान कहते हैं। सगुण-ध्यान में ही मानस ध्यान आता है। इष्ट के देखे हुए स्थूल रूप को अपने मानस पटल पर हू-ब-हू उतारने की क्रिया को मानस ध्यान कहते हैं। जिन इष्ट के नाम का मानस जप करते हैं, उन्हीं के स्थूल रूप का मानस ध्यान करना चाहिए। इसको फकीर लोग फनाफिल मुर्शिद कहते हैं। मानस ध्यान में इष्ट के मनोमय रूप पर कुछ काल तक दृष्टि के स्थिर हो जाने पर दृष्टि-योग की क्रिया की जाती है।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "\n(ख) निर्गुण-ध्यान",
                  //                   style: TextStyle(
                  //                     fontSize: 20,
                  //                   )),
                  //               TextSpan(
                  //                   text:
                  //                       "\nजिस आदिशब्द से सृष्टि का विकास हुआ है, उसे सारशब्द भी कहते हैं। वह त्रयगुण-रहित होने से निर्गुण कहलाता है। उसी सारशब्द के ध्यान को निर्गुण-ध्यान कहते हैं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //             ])),
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //       RichText(
                  //           text: TextSpan(
                  //               style: TextStyle(
                  //                 color: txtcol,
                  //                 fontSize: 18,
                  //               ),
                  //               children: const [
                  //             //  दृष्टियोग
                  //             TextSpan(
                  //                 text: "\nदृष्टियोग",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                 )),
                  //             TextSpan(
                  //               text:
                  //                   "\nदेखने की शक्ति को दृष्टि कहते हैं। दोनों आँखों की दृष्टियों को मिलाकर मिलन-स्थान पर मन को टिकाकर देखने की क्रिया को दृष्टियोग कहते हैं। इस अभ्यास से एकविन्दुता की प्राप्ति होती है, जिससे सूक्ष्म वा दिव्य दृष्टि खुल जाती है। तब साधक के अन्दर अंधकार नहीं रहता है; अपने अन्दर उसे प्रकाश-ही-प्रकाश दीखता है। दृष्टि के चार भेद हैं-जाग्रत की दृष्टि, स्वप्न की दृष्टि, मानस दृष्टि और दिव्य दृष्टि। दृष्टि के पहले तीनों भेदों का निरोध होने से मनोनिरोध होता है और दिव्य दृष्टि खुल जाती है। तेजोमय विन्दु का ध्यान परम ध्यान कहा जाता है। इसको फकीर लोग सगले नसीरा कहते हैं।\n",
                  //               style: TextStyle(fontStyle: FontStyle.italic),
                  //             ),
                  //             //  सुरत-शब्द-योग
                  //             TextSpan(
                  //                 text: "\nसुरत-शब्द-योग",
                  //                 style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                 )),
                  //             TextSpan(
                  //                 text:
                  //                     '''\nआँख, कान और मुँह बन्द करके केन्द्रीय शब्द को पकड़ने की क्रिया को सुरत-शब्द-योग कहते हैं।
                  //                       सृष्टि के पाँच मंडल हैं-स्थूल, सूक्ष्म, कारण, महाकारण और कैवल्य। इन पाँचो मंडलों के केन्द्रीय शब्द हैं। इन पाँचो केन्द्रीय शब्दों के अतिरिक्त अन्दर में विभिन्न प्रकार की असंख्य ध्वनियाँ हो रही हैं, जिन्हें अनहद नाद कहते हैं। इन अनहद नादों के बीच निचले मंडल के केन्द्रीय शब्द को क्रम-क्रम से पकड़ते हुए अन्ततः कैवल्य मंडल के केन्द्रीय शब्द-सारशब्द को पकड़ना नादानुसंधान (सुरत-शब्द-योग) का लक्ष्य है। केन्द्रीय शब्द को पकड़ने की युक्ति गुरु बतलाते हैं। दृष्टियोग पूरा होने पर और दृष्टियोग पूरा नहीं होने पर; दोनों स्थितियों में नादानुसंधान किया जा सकता है; परन्तु दोनों स्थितियों में नादानुसंधान की विधि अलग-अलग बतायी जाती है। दृष्टियोग में पूर्ण साधक को सीधे केन्द्रीय शब्द सुनाई पड़ता है और जो दृष्टियोग साधन में पूर्णता प्राप्त किये बिना नादानुसंधान करते हैं, उनके लिए यह कोई आवश्यक नहीं है कि वे शीघ्र केन्द्रीय शब्द को पकड़ ही ले।
                  //         सारशब्द को नादानुसंधान के द्वारा पकड़ने पर साधक उसके आकर्षण से खिंचकर परमात्म-पद को प्राप्त कर लेते हैं। तब वे दैहिक, दैविक, भौतिक-इन त्रय तापों से मुक्त हो जाते हैं; आवागमन छूट जाता है। नादानुसंधान को फकीर लोग सुलतानु उलजकार कहते हैं।\n''',
                  //                 style: TextStyle(
                  //                   fontStyle: FontStyle.italic,
                  //                 )),
                  //           ])),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //
                  //       //  संतमत की विशेषता
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 20,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text: " \nसंतमत की विशेषता\n\n",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Colors.orange,
                  //                     fontSize: 25,
                  //                   )),
                  //               TextSpan(
                  //                   text: "1. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत कहता है कि एक ईश्वर की भक्ति करो। ईश्वर की प्राप्ति जब कभी होगी, तो अपने अन्दर होगी। उस ईश्वर के पास जाने का रास्ता भी एक ही है, जो दशम द्वार से आरम्भ होता है। सभी स्थूल सगुण उपासनाएँ उस रास्ते को पकड़ाने के अवलम्ब है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "2. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत की साधना का मूल उद्देश्य निर्गुण-सगुण पर परमात्मा की प्राप्ति है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "3. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत किसी मत वा पन्थ का खण्डन नहीं करता है। इसका कथन है कि कोई किसी भी पन्थ का माननेवाला हो, वह मूल को जाने। इसकी साधनाएँ आन्तरिक हैं। इसमें तिलक लगाने, माला फेरने, उपवास करने, तीर्थ-भ्रमण करने आदि पर जोर नहीं दिया जाता।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "4. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत सामाजिक समन्वय का मत है। इस मत से जाति-पाँति, ऊँच-नीच, छुआछूत आदि का भेदभाव मिटाया जाता है। इसके अनुसार सभी वर्गों और सभी जातियों के नर-नारियों को ईश्वर-भक्ति करने का समान अधिकार है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "5. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत परम प्रभु परमात्मा से मिलाने में पूरे गुरु की महत्त्वपूर्ण भूमिका मानता है। सद्गुरु की कृपा होगी, तब ही जीव माया-बन्धन से मुक्त हो सकता है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "6. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत-साधना में ज्ञान, योग और भक्ति तीनों का समन्वय है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "7. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत शंकराचार्य के अद्वैतवाद को स्वीकार करता है, जिनमें जगत् को असत्य और अद्वितीय परब्रह्म को सत्य माना गया है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "8. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " संतमत आन्तरिक साधना पर अधिक जोर देता है। यह समाज के किसी व्यक्ति की उपेक्षा नहीं करता है। यह भेद-भाव को त्यागकर परोपकार करने की शिक्षा देता है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic))
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 20,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text: " \nसंतमत की दीक्षा विधि\n\n",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Colors.orange,
                  //                     fontSize: 25,
                  //                   )),
                  //               TextSpan(
                  //                   text: "1. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " जो व्यक्ति छह माह पूर्व मांस-मछली का भोजन और नशा-सेवन छोड़ चुके हैं, उन्हें ही संतमत में दीक्षित किया जाता है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "2. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " दीक्षा-पुस्तिका में दीक्षार्थी का नाम, जाति, पेशा, धर्म, गाँव, पत्रलय, जिला लिख लेते हैं और संतमत-सिद्धांत उन्हें समझाकर उनसे तीन प्रतिज्ञाएँ करवाते हैं-"
                  //                       "\n(क) हम प्रतिज्ञा करते हैं/करती हैं कि संतमत की रीति-अभ्यास और उससे जो कुछ अन्तर में मालूम होगा, कभी किसी से नहीं कहेंगे/कहेंगी।"
                  //                       "\n(ख) हम संतमत-सिद्धांत को अच्छी तरह समझ गये/समझ गयीं, उनको हम दिल से प्यार करते रहेंगे/रहेंगी और संतमत की उन्नति में तन-मन-धन से हमेशा मददगार रहेंगे/रहेंगी।"
                  //                       "\n(ग) अभ्यास करने में जो शक्ति पैदा होगी, उसको बुरे कामों में खर्च नहीं करेंगे/करेंगी।"
                  //                       "\nइतनी प्रतिज्ञा कराने के बाद दीक्षार्थी से उनके नाम-पते के खाने में हस्ताक्षर कराये जाते हैं। जो निरक्षर हैं, उनसे एक लकीर खिंचवा ली जाती है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "3. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " दीक्षार्थी को स्नान करके पवित्र कपड़ा पहनकर और फूलों की एक माला एवं थोड़ा-सा प्रसाद अपने साथ लाना पड़ता है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "4. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " दीक्षा के दिन दीक्षा लेने के पूर्व तक निराहार रहना पड़ता है। प्रायः 9-10 बजे पूर्वाह्ण में दीक्षा दी जाती है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "5. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " परमात्मा के पास जाने की विधि (मानस जप, मानस ध्यान, दृष्टियोग और शब्द योग) दीक्षा में बतलायी जाती है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "6. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " ध्यानाभ्यास के लिए किस आसन से, कैसे और कहाँ बैठना चाहिए, यह भी दीक्षार्थी को बताया जाता है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "7. ",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " शनिवार को छोड़कर किसी भी दिन दीक्षा दी जा सकती है।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  //         child: Divider(
                  //           thickness: 2,
                  //         ),
                  //       ),
                  //       RichText(
                  //         text: TextSpan(
                  //             style: TextStyle(
                  //               color: txtcol,
                  //               fontSize: 20,
                  //             ),
                  //             children: const [
                  //               TextSpan(
                  //                   text: " \nसंतमत में विधि-निषेध-कर्म\n\n",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Colors.deepOrange,
                  //                     fontSize: 25,
                  //                   )),
                  //               TextSpan(
                  //                   text: "विधि-कर्म",
                  //                   style:
                  //                       TextStyle(fontWeight: FontWeight.bold)),
                  //               TextSpan(
                  //                   text:
                  //                       " एक ईश्वर पर अचल विश्वास, पूर्ण भरोसा तथा उसकी प्राप्ति अपने अन्दर होगी-इसका दृढ़ निश्चय रखना, सद्गुरु की निष्कपट सेवा, सत्संग और दृढ़ ध्यानाभ्यास।\n\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text: "निषिद्ध-कर्म",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //               TextSpan(
                  //                   text:
                  //                       " झूठ बोलना, नशा खाना, व्यभिचार करना, हिंसा करनी एवं मांस-मछली का भोजन करना और चोरी करना-इसको महर्षिजी महापाप कहते हैं। अतः ये त्याज्य कर्म हैं।\n",
                  //                   style:
                  //                       TextStyle(fontStyle: FontStyle.italic)),
                  //             ]),
                  //         textAlign: TextAlign.justify,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Divider(
                      thickness: 5,
                      color: Colors.blueGrey,
                    ),
                  ),

                  //About monks
                  Text(
                    "संतों के बारे में\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),

                  // परम सन्त तुलसी साहब
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "परम सन्त तुलसी साहब",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672937597/satsangapp/images/monks/My_project-1_13_hsbrff.png",
                                boxFit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  'संतों के विषय में सही और पूरी जानकारी कम ही प्राप्त होती है । तुलसी साहब के जीवन का वृत्तान्त तो और भी दुर्लभ है । उनके प्रारम्भिक जीवन का विवरण अस्पष्ट और धुंधला है । यद्यपि वे उन्नीसवीं सदी के मध्य तक रहे, फिर भी उनके मूल नाम, उनके पिता और परिवार के बारे में इतिहास मौन है ।'
                                  'तुलसी साहब के प्रारम्भिक जीवन के विषय में जो विभिन्न विवरण मिलते हैं, वे संक्षेप में यहाँ दिये जाते हैं ।'
                                  'बेल्वेडियर प्रेस द्वारा प्रकाशित तुलसी साहब के ‘रत्न सागर’ (प्रथम प्रकाशन ûùúù ईú) में दिये गये जीवन-चरित्र के अनुसार तुलसी साहब का जन्म एक उच्च ब्राह्मण परिवार में हुआ था । किशोर अवस्था से ही आपको संसार के प्रति अरुचि थी । छोटी उम्र में ही सब कुछ त्याग दिया और अन्त में जिला अलीगढ़ के हाथरस शहर में आकर रहने लगे । इस वृत्तान्त में तुलसी साहब के असली नाम, उनके माता-पिता के नाम तथा उनके जन्मस्थान के विषय में कोई उल्लेख नहीं है ।'
                                  'इसी प्रेस ने सन् ûùûû में तुलसी साहब का प्रसिद्ध ग्रंथ ‘घट रामायण’ प्रकाशित किया । इसके प्रारम्भ में तुलसी साहब के जीवन चरित्र के विषय में और प्रकाश डालने का प्रयास किया गया है । इसके अनुसार तुलसी साहब का जन्म सन् ûझ्öý में हुआ और ûøþý में øú वर्ष की आयु में आपने शरीर छोड़ा । वे पुना के राजा û के सबसे बड़े पुत्र थे । वे जाति के ब्राह्मण थे तथा उनका नाम श्यामराव था । उनकी इच्छा के विरुद्ध छोटी उम्र में ही उनके पिता ने उनका विवाह कर दिया । उनकी पत्नी का नाम लक्ष्मीबाई था और इस विवाह से उन्हें एक पुत्र की प्राप्ति हुई । उनके पिता की रुचि अध्यात्म और प्रभु-भक्ति की ओर थी । वे अपनी गद्दी त्यागकर श्यामराव को राज्य देना चाहते थे ताकि बाकी जीवन भक्ति में बितायें । परन्तु श्यामराम खुद भी संसार की ओर से उदासीन थे और राज्य-वैभव की जिन्दगी के प्रति उनमें कोई झुकाव न था । अपने राज्याभिषेक के एक दिन पहले ही वे अपने महल से भाग निकले । काफी तलाश के बाद भी जब श्यामराव का पता न चला तो उनके छोटे भाई को राजा बनाया गया ।'
                                  'श्यामराव कई वर्षों तक जंगलों, पहाड़ों, गाँवों और शहरों में घूमते रहने के बाद हाथरस में आये । हाथरस को आपने अपना स्थायी निवास बनाया और अपना बाकी जीवन यहीं बिताया । यहीं आप तुलसी साहब के नाम से प्रसिद्ध हुए ।'
                                  'आचार्य क्षितिजमोहन सेन, डॉú राजकुमार वर्मा, डॉú पीताम्बरदत्त बड़थ्वाल, आचार्य परशुराम चतुर्वेदी तथा अन्य आधुनिक विद्वानों ने ऊपर दिये दो वृत्तान्तों में से एक को अपनाया है । '
                                  'महाराष्ट्र के एक प्रमुख इतिहासवेत्ता श्रीविट्ठल राú ठकार ने हाल ही में पेशवा-वंश के दस्तावेजों का अध्ययन करके तुलसी साहब के विषय में कुछ खोज की है, जो इस बात की पुष्टि करती है कि तुलसी साहब पेशवा परिवार से संबंधित थे । यद्यपि श्रीठकार की खोज अभी पूरी नहीं हुई है, फिर भी उनका कथन है कि इस बात के पक्ष में समुचित आधार हैं कि तुलसी साहब वास्तव में पेशवा बाजीराव के प्रथम दौहित्र (बाजीराव प्रथम की कन्या के पुत्र) अमृत राव थे । उनका जन्म ûझ्öý-öþ में हुआ था और जब वे '
                                  'तीन-चार वर्ष के थे, तब रघुनाथ राव ने उन्हें गोद ले लिया था । इस प्रकार अमृतराव बाजीराव द्वितीय के बड़े भाई थे । शुरू से ही अमृतराव स्वभाव से गम्भीर, विवेकशील और निष्कपट थे । राजनैतिक षड्यंत्रें से उन्हें घृणा थी । पेशवा दरबार के राजनैतिक दाव-पेंचों से ऊबकर वे सन् ûøúþ में पूना छोड़कर बनारस आ गये और अपना जीवन मालिक की भजन-बंदगी में लगा दिया । ûøúø-ù में आप हाथरस आये और यहाँ अपने अंतिम समय ûøþý तक रहे । परन्तु यह स्पष्ट पता नहीं लगता कि अमृतराव कब और कैसे तुलसी साहब के नाम से पुकारे जाने लगे ।'
                                  'ऊपर दिये वृत्तान्तों पर गौर करने से यह पता चलता है कि इन सभी में कुछ ऐसी बातें हैं जिन्हें काफी हद तक सही माना जा सकता है । संक्षेप में ये इस प्रकार है:'
                                  'तुलसी साहब ने उच्च तथा कुलीन परिवार में जन्म लिया था और वे पेशवा के राजवंश में से थे ।'
                                  'उनका जन्म अट्ठारहवीं सदी के उत्तरार्द्ध में हुआ था । आध्यात्मिक ध्येय की प्राप्ति के लिए सांसारिक ऐश्वर्यों को त्यागने की ओर शुरू से उनका झुकाव था ।'
                                  'वे अपने जन्म-स्थान से भागे और कोई पहचान न ले, इसलिए अपने को छिपाये रखा । हो सकता है कि अपने को अज्ञात रखने के लिए ही उन्होंने अपना नाम श्यामराव रख लिया हो ।'
                                  'उन्होंने बहुत भ्रमण और अनेक यात्रएँ कीं और अन्त में जिला अलीगढ़ के हाथरस शहर को अपना स्थायी निवास-स्थान बनाया ।'
                                  'यह भी निश्चित रूप से कहा जा सकता है कि तुलसी साहब दक्षिण भारत से आये थे; क्योंकि लोग उन्हें ‘दक्खिनी बाबा’ के नाम से पुकारते थे ।'
                                  'इस बात का कोई पता नहीं लगता कि तुलसी साहब को कब सतगुरु मिले और न यह ही पता लगता है कि सुरत-शब्दयोग के मार्ग में वे कब दीक्षित हुए । जब वे पूना में राजकुमार थे, उस समय या बाद में जबकि सब कुछ त्यागकर उन्होंने एक भ्रमणशील जीवन अपनाया ।'
                                  'तुलसी साहब ने अपनी रचनाओं में सतगुरु के प्रति अपनी श्रद्धा तो प्रकट की है, पर उनके नाम का उल्लेख नहीं किया है । एक मराठीभाषी विद्वान् ने एक पत्रिका में लिखा है, श्श् तुलसी साहब को उनके गुरु ने हाथरस शहर में दीक्षा दी और अपने गुरु के आदेश के अनुसार उन्होंने बहुत अभ्यास किया है ।य् '
                                  'सभी युगों में, सब सन्तों ने परमात्मा की प्राप्ति के लिए वक्त के सतगुरु की आवश्यकता पर जोर दिया है । सन्तमत में सतगुरु की बहुत जरूरत है । सतगुरु के बिना आन्तरिक रूहानी यात्र संभव नहीं है ।'
                                  'तुलसी साहब ने अपनी रचनाओं में स्थान-स्थान पर गुरु की आवश्यकता पर जोर दिया है । आप बड़े स्पष्ट शब्दों में ‘रत्न सागर’ में लिखते हैं:\n'
                                  'बिन सतगुरु उपदेस, सुर नर मुनि नहि निस्तरे ।'
                                  'ब्रह्मा बिस्नु महेस, और सभन की को गिने ।।'
                                  'सतगुरु बिना भव माहि भटके, अटक नहि गुरु की गही ।'
                                  'भृंगी भवन नहि कीट पावे, उलटि भृंगी ना भई ।।'
                                  '(रत्न सागर, पृú झ्)'
                                  'स्वयं तुलसी साहब ने भी गुरु धारण किया था, इसके संकेत उनके कई शब्दों में मिलते हैं । अपने सतगुरु के प्रति कृतज्ञता प्रकट करते हुए आप फरमाते हैं:'
                                  'सतगुरु अगम अपार, सार समझि तुलसी कियो ।'
                                  'दया दीन निरधार, मोहि निकार बाहिर लियो ।।'
                                  'सतगुरु संत दयाल, करि निहाल मो को दियो ।'
                                  'सुरति सिध सुधार, सार पार जद लखि पर्यो ।।'
                                  '(घट रामायण, भाग û, पृú ø)'
                                  'इसी प्रकार तुलसी साहब सतगुरु की कृपा से अपने अन्दर हुए परिवर्तन का वर्णन एक सुन्दर दृष्टांत के द्वारा करते हैं:'
                                  'मैं लोहा जड़ कीट समाना । गुरु पारस संग कनक कहाना ।।'
                                  'तुलसी सतगुरु पारस कीन्हा । लोहा सुगम अगम लखि लीन्हा ।।'
                                  '(घट रामायण, भाग ü, पृú ûùû)'
                                  'धीरे-धीरे तुलसी साहब के पास जिज्ञासुओं और शिष्यों के बड़ी संख्या में समुदाय आने लगे । ब्राह्मण से शूद्र तक सभी जाति के लोग, गरीब से लेकर अमीर तक सभी स्तर के लोग, विद्वान् और अनपढ़ किसान उनके सत्संग में आने लगे । तुलसी साहब सत्संग के लिए हाथरस से बाहर भी जाया करते थे । उत्तर प्रदेश के ग्रामों और शहरों में वे प्रायः जाया करते थे । उनके शिष्यों में आगरा के सेठ दिलवाली सिह, उनकी पत्नी महामाया, उनकी माता, सास तथा बहन भी थीं । ये सभी तुलसी साहब के प्रेमी शिष्य थे तथा तुलसी साहब कई बार आगरा आते-जाते रहते थे । आगरा में आप पन्नी गली में सेठ दिलवाली सिह के घर में ठहरते थे तथा वहीं सत्संग करते थे ।'
                                  'सन् ûøûझ् में अक्टूबर महीना था । वर्षा के बाद सेठ दिलवाली सिह के यहाँ रेशमी, जरी के कपड़े, कमख्वाब व कीमती ऊनी कपड़े, शाल आदि छत पर धूप में सुखाये जा रहे थे । एक दिन पहले ही वर्षा हुई थी । इससे गलियों में कीचड़ था । तुलसी साहब के पैर कीचड़ में सने हुए थे । तुलसी साहब को आते देख सेठ दिलवाली सिह की माताजी और अन्य महिलाएँ बहुत आनन्दित हुईं । उन्होंने मत्था टेका और विनती की कि वे उन्हीं कपड़ों पर विराजें । तुलसी साहब मिट्टी और कीचड़ में सने पैरों के साथ उन बहुमूल्य वÐों पर चलकर बैठ गये । सतगुरु के प्रेम और भक्ति में मग्न, घर की महिलाओं का खयाल कपड़ों पर मिट्टी लगने की ओर नहीं गया । उनकी विनती स्वीकार करके तुलसी साहब ने उन वÐों पर चरण रखे । यह देखकर वे बहुत प्रसन्न हुईं । तुलसी साहब ने कहा, श्श् अरे, मैंने तो तुम्हारे कीमती कपड़े मिट्टी से बिगाड़ दिये ।य् इस पर सेठ दिलवाली सिह की माता ने प्रेम और ममता के साथ उत्तर दिया, श्श् नहीं, साहबजी ! û कुछ भी नहीं बिगड़ा है । आपने तो हमें अपने दर्शन से कृतार्थ कर दिया । सब कुछ आपका ही है, इन कपड़ों में हमारा क्या है ? उनकी भक्ति-भावना को देखकर तुलसी साहब ने कहा, श्श् मैं तुमसे बहुत खुश हूँ । जो भी चाहो, माँग लो, मैं खुशी से दे दूँगा ।य्'
                                  'इस पर सेठ दिलवाली सिह की माताजी ने अर्ज किया, श्श् आपकी दया-मेहर से हमारे पास सब कुछ है, किसी चीज की जरूरत नहीं है । परन्तु--य् अपनी पुत्रवधू की ओर संकेत करते हुए उन्होंने विनती की, श्श् महामाया को कुछ चाहिए ।य् सेठ दिलवाली सिह की धर्मपत्नी महामाया को कोई पुत्र नहीं था । तुलसी साहब ने दया-मेहर की उसी मौज में फरमाया, श्श् हाँ, इसे पुत्र प्राप्त होगा, परन्तु उसे साधारण मनुष्य मत समझना ।य्'
                                  'अगस्त, ûøûø में सेठ दिलवाली सिह और महामाया को पुत्ररत्न की प्राप्ति हुई । पुत्र का नाम शिवदयाल सिह रखा गया, जो आगे जाकर परम सन्त के रूप में प्रकट हुए और राधास्वामीजी महाराज के नाम से प्रसिद्ध हुए ।'
                                  'तुलसी साहब विनम्र और सहिष्णु थे । उनका व्यवहार सभी के प्रति प्रेमपूर्ण था । जहाँ अपने विचारों को व्यक्त करने में वे दृढ़ और स्पष्ट थे, वहीं अपने व्यवहार में सौम्य और मृदु थे । कई बार विद्वान्, पंडित और पुरोहित अथवा मठाधीश उनसे बहस करने आते थे । कभी-कभी तो वे उनसे लड़ने के विचार से आते और कठोर वचनों का प्रयोग करते । परन्तु तुलसी साहब हमेशा उठकर उनका स्वागत करते, झुककर प्रणाम करते और पधारकर उनकी कुटिया को पवित्र करने के लिए उनका आभार मानते । वे उन्हें अपने से ऊँचे आसन पर बिठाते और उनके आक्रोशपूर्ण कठोर वचनों को बड़े धैर्य से सुनते । घट रामायण में ऐसे अनेक प्रसंग हैं जिनसे प्रकट होता है कि तुलसी साहब किस प्रकार अपनी नम्रता तथा अपने सौम्य और प्रेमपूर्ण व्यवहार के द्वारा अपने विरोधियों का हृदय जीत लेते थे ।'
                                  'अपने शिष्यों के प्रेम और भक्ति का तुलसी साहब बहुत आदर करते थे । एक बार वे आगरा गये और पन्नी गली में स्वामीजी महाराज के यहाँ पहुँचे । यह सुनकर कि सतगुरु शहर में आये हैं, कुछ महिलाएँ जो कि पास ही रहती थीं, दर्शन के लिए दौड़ी आयीं । उनमें से कई घर के कामकाज में लगी हुई थीं और जैसी थीं, वैसी ही स्वामीजी के घर की ओर दौड़ पड़ीं । आकर उन्होंने बड़ी भक्ति के साथ तुलसी साहब को मत्था टेका और उनके आसपास बैठ गयीं । तुलसी साहब के एक शिष्य ने जब देखा कि उनके कपड़ों में से दुर्गंध आ रही है तो उनसे कहा कि वे दूर हटकर बैठें; क्योंकि उनके कपड़ों में से पसीने की बदबू आ रही है । तुलसी साहब ने उसे रोकते हुए कहा, श्श् भाई, इन्हें बैठे रहने दो । तुम्हें इनके प्रेम की खुशबू का पता नहीं । तुम नहीं जानते कि किस भक्ति-भावना के साथ ये यहाँ आयी हैं । तुम्हें इनमें से बदबू आती है, मुझे नहीं आती ।य्'
                                  'शेख तकी नामक एक फकीर हज से लौट रहा था । संयोग से उसने अपना तम्बू तुलसी साहब की कुटिया के सामने लगाया । इस प्रकार उसे तुलसी साहब से मुलाकात और बातचीत का मौका मिला । परमात्मा की प्राप्ति के मार्ग के बारे में अपने वार्तालाप में तुलसी साहब ने शेख तकी को समझाया कि मनुष्य का शरीर ही असली मस्जिद है और इसी में खुदा रहता है । इंसान के हाथों से बनायी हुई ईंट-पत्थरों की मस्जिद में वह नहीं रहता । उनसे मिलने का रास्ता भी इंसान के शरीर में ही है । वह रास्ता तीसरी आँख अथवा ‘नुक्ताए सवैदा’ में से शुरू होता है । आँखों के इस केन्द्र में सारी सृष्टि का भेद छिपा हुआ है । ‘कुन’, शब्द या दिव्य धुन खुदा के महल के दरवाजे की कुंजी है, लेकिन यह केवल पूरे सतगुरु से ही मिल सकती है ।'
                                  'दिल का हुजरा साफ कर, जाना के आने के लिये ।'
                                  'ध्यान गैरों का उठा, उसके बिठाने के लिये ।।'
                                  'चश्मे दिल से देख यहाँ जो जो तमाशे हो रहे ।'
                                  'दिल सितां क्या क्या हैं तेरे दिल सताने के लिये ।।'
                                  'एक दिल लाखों तमन्ना उस पै और ज्यादा हविस ।'
                                  'फिर ठिकाना है कहाँ उसको बिठाने के लिये ।।'
                                  'नकली मन्दिर मस्जिदों में जाय सद अफसोस है ।'
                                  'कुदरती मस्जिद का साकिन दुख उठाने के लिये ।।'
                                  'कुदरती काबे की तू मेहराब में सुन गौर से ।'
                                  'आ रही धुर से सदा तेरे बुलाने के लिये ।।'
                                  'क्यों भटकता फिर रहा तू ऐ तलाशे यार में ।'
                                  'रास्ता शहरग में है दिलवर पै जाने के लिये ।।'
                                  'मुरशिदे कामिल से मिल सिद्क औ सबूरी से तकी ।'
                                  'जो तुझे देगा फहम शहरग के पाने के लिये ।।'
                                  'गोश बातिन हो कुशादा जो करे कुछ दिन अमल ।'
                                  'ला इलाह अल्लाह हो अकबर पै जाने के लिये ।।'
                                  'यह सदा ‘तुलसी’ की है आमिल अमल कर ध्यान दे ।'
                                  'कुनकुराँ में है लिखा अल्लाहू अकबर के लिये ।।\n\n'
                                  'सभी सन्तों की शिक्षा अपने मूल रूप में एक ही है । वे सभी ‘परमात्मा की उस बादशाहत’ का जिक्र करते हैं, जो कि हमारे अन्दर में है । वे उसकी प्राप्ति का मार्ग बताते हैं और वहाँ जाने की विधि सिखाते हैं । वे अन्य सन्तों से भिन्न कोई शिक्षा देने का दावा नहीं करते । परन्तु उनके जाने के बाद उनके शिष्य धीरे-धीरे उनकी असली शिक्षा को भूलकर बाहरमुखी कर्मों, रिवाजों आदि में उलझ जाते हैं । उनके निर्मल रूहानी सन्देश को वे बाहरी परिपाटियों और कर्मकाण्ड का रूप दे देते हैं । असली गुर (भेद) को खोकर वे छिलके समेटने में लग जाते हैं ।'
                                  'तुलसी साहब के संसार में आने से पहले पिछले सन्तों के अनुयायी अपने सतगुरु के मूल संदेशों को भूलकर पंथ बनाये बैठे थे । कबीर, दादू, पलटू, दरिया आदि सन्तों के अनुयायी कबीर-पंथी, दादू-पंथी, पलटू-पंथी, दरिया-पंथी के नाम अपना चुके थे ।'
                                  'तुलसी साहब ने स्पष्ट रूप से कहा कि वे कोई नया मार्ग नहीं बतला रहे हैं, बल्कि वही शिक्षा दे रहे हैं जो कबीर साहब, नानक साहब, दादू साहब तथा अन्य सन्तों की है । अपनी इस बात की पुष्टि में तुलसी साहब अपने ‘घट रामायण’ में कबीर, रविदास, दादू तथा अन्य सन्तों के शब्दों के उद्धरण देते हैं । तुलसी साहब ने पहली बार सभी सन्तों की शिक्षा के लिए ‘सन्त-मत’ वाक्य का प्रयोग किया और इस प्रकार विभिन्न सन्तों की शिक्षा की एकता और समानता को प्रकट करने का प्रयास किया ।'
                                  'तुलसी साहब की रचनाओं में शब्दावली, रत्नसागर, घटरामायण तथा एक छोटी अपूर्ण पुस्तिका पद्य-सागर है । शब्दावली में तुलसी साहब की फुटकर रचनाओं, पदों, शब्दों आदि का संग्रह है । इनमें से अधिकांश पद संगीत के विभिन्न रागों पर आधारित हैं और सन्तमत के विभिन्न अंगों पर प्रकाश डालते हैं । ‘घट रामायण’ और ‘रत्न-सागर’ कथोपकथन की शैली में लिखी गई है । इसमें तुलसी साहब शिष्यों और जिज्ञासुओं के प्रश्नों का समाधान करते हैं । ‘घट रामायण’ में तुलसी साहब के समय में प्रचलित विभिन्न धर्मों के सिद्धान्तों का विवेचन तथा सन्तमत की दृष्टि से उनकी व्याख्या है । रत्न-सागर के विषय हैं-सृष्टि की रचना, स्वर्ग और नरक, काल, मन, मृत्यु, सन्तों की शिक्षा, सन्तों की दया, अन्दर के भेद आदि । तुलसी साहब की सभी रचनाओं के समान ही रत्न सागर में भी पूरे सतगुरु की महिमा, सतगुरु की आवश्यकता और उनके सत्संग के लाभ पर काफी लिखा गया है । मृत्यु के समय सन्त किस प्रकार अपने शिष्य की आत्मा की सँभाल करते हैं, रत्न-सागर में इसका भी स्पष्ट वर्णन किया गया है ।'
                                  'तुलसी साहब की रचनाओं में संस्कृत, अरबी और फारसी भाषा के शब्दों का काफी प्रयोग हुआ है । तुलसी साहब के समय में दक्षिण के कई राज्यों में फारसी राजकीय भाषा थी, अतएव पेशवा परिवार से संबंधित होने के कारण तुलसी साहब को फारसी का अच्छा ज्ञान रहा होगा । परन्तु इसके साथ ही आपकी रचनाओं में ब्रज, अवधी, मराठी, राजस्थानी (मारवाड़ी), गुजराती, पंजाबी और मैथिली शब्दों का भी प्रयोग हुआ है । इससे स्पष्ट होता है कि अन्य सन्तों की तरह तुलसी साहब भी उत्तर प्रदेश, राजस्थान, गुजरात, पंजाब, बिहार आदि प्रदेशों में बराबर यात्रएँ करते रहे होंगे । परन्तु आपका स्थायी निवास-स्थान हाथरस नगर की सीमा पर स्थित जोगिया ग्राम में एक कुटिया ही रहा । यहाँ आप अपने अन्तिम समय तक रहे तथा सन् ûøþý में अस्सी वर्ष की आयु में धुरधाम को प्रयाण कर गये ।',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // बाबा देवी साहब
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "बाबा देवी साहब",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672937938/satsangapp/images/monks/My_project-1_14_a42rk3.png",
                                boxFit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  '''उत्तर प्रदेश के जिला अलीगढ़, तहसील हाथरस में श्रीमहेश्वरी लालजी कानूनगोई का काम करते थे । कहा जाता है कि श्रीमहेश्वरी लालजी की कई संतानें काल-कवलित हो चुकी थीं । इस कारण वे दुखी रहते थे । इनके परिवार के लोग हाथरस किले के पास रहनेवाले संत तुलसी साहब के भक्त थे । संत तुलसी साहब कभी-कभी इनके घर पधारने की कृपा करते थे ।
एक दिन संत तुलसी साहब का आगमन महेश्वरी लालजी के घर पर हुआ । श्री महेश्वरी लालजी को चिन्तित देख संत तुलसी साहब कहने लगे- श्श् संतान की चिन्ता मत करो । तेरे घर एक पवित्र आत्मा का जन्म होगा ।य्
कुछ काल के लिए संत तुलसी साहब हाथरस किले से बाहर सत्संग प्रचारार्थ चले गये । इधर मुंशी महेश्वरी लालजी को सन् ûøþû ईú के मार्च महीने में रविवार के दिन एक पुत्र-रत्न की प्राप्ति हुई । बालक का नाम देवी प्रसाद रखा गया । जब मुंशी महेश्वरी लालजी को ज्ञात हुआ कि परम संत तुलसी साहब हाथरस लौट आये हैं, तो वे तत्काल अपनी पत्नी और बच्चे के साथ उनकी कुटिया पर आशीर्वाद लेने पहुँच गये । संत तुलसी साहब ने प्रसन्नतापूर्वक अपना दाहिना हाथ बच्चे के सिर पर रखकर उसे आशीर्वाद दिया और बोले- श्श् इसे साधारण बालक न समझना ।य्
जब बालक देवी प्रसाद की अवस्था साढ़े छह वर्ष की हुई तो योग्य अध्यापक की देखरेख में उनकी शिक्षा का शुभारम्भ हुआ । वे तीक्ष्ण बुद्धि के थे । पढ़ाई-लिखाई के पाठ एवं सबक को यथाशीघ्र निबटाकर किसी गंभीर चितन में मग्न हो जाते ।
एक दिन इनके अध्यापक ने पूछा- श्श् तुम खाली बैठकर क्या सोचा करते हो ?य् उन्होंने सकुचाते हुए विनीत भाव से निवेदन किया- श्श् मेरे मन में यह बात आती रहती है कि इस संसार के रचयिता कौन हैं ? जीव कहाँ से आता है और कहाँ चला जाता है ?य् अध्यापक ईश्वर-संबंधी चर्चा को सुन गंभीर होते हुए बोले- श्श् अभी तुम्हें अपनी पढ़ाई-लिखाई पर विशेष ध्यान देना चाहिए ताकि आगे वह तुम्हारे काम आवे ।य्
एक बार आर्यसमाज के प्रवर्त्तक स्वामी दयानन्दजी सरस्वती भ्रमण करते हुए हाथरस पहुँचे । देवी साहब को साथ लेकर उनके चाचाजी स्वामीजी के दर्शनार्थ गये । चाचाजी देवी प्रसाद की जन्मपत्री भी साथ ले गये थे । यथोचित नमस्कार-बंदगी के पश्चात् उन्होंने जन्मपत्री स्वामीजी को देखने को दी । जन्मपत्री हाथ में लेते हुए स्वामीजी ने पूछा- श्श् इसका क्या करूँ ?य् देवी प्रसादजी ने कहा- श्श् आपसे अपना ग्रह जानने के लिए लाया हूँ ।य् स्वामीजी ने कहा- श्श् पहले यह बताओ कि तुम्हारी आस्था किस पर है ?य् देवी प्रसादजी ने कहा- श्श् एक परमेश्वर पर है ।य् स्वामीजी ने फिर पूछा- श्श् वह कैसा है, कहाँ रहता है और किस प्रकार प्राप्त होता है ?य् देवी प्रसादजी ने साधिकार कहा- श्श् स्वामीजी ! वह सबसे बड़ा और सबसे सूक्ष्म है, सबके अन्दर रहता है । उसकी प्राप्ति का मार्ग अपने अन्दर है, जो किसी ज्ञानी-गुरु के द्वारा प्राप्त होता है ।य् स्वामीजी ने पूछा- श्श् तुम देवालय जाकर ठाकुरजी की पूजा भी करते हो ? देवी प्रसाद ने उत्तर दिया- श्श् मनुष्य-शरीर सबसे श्रेष्ठ ठाकुरबाड़ी है, जिसमें परमपिता परमात्मा सहित सभी देव-देवियों का निवास है । इसे छोड़कर आप किस देवालय में जाने की बात पूछते हैं ?य्
बालक देवीप्रसाद के उत्तर को सुनकर स्वामीजी बड़े प्रसन्न हुए और जन्मपत्री लौटाते हुए बोले- श्श् बच्चा ! आनन्द से रहो, तुम्हारे सब ग्रह अच्छे हैं ।य्
देवीप्रसादजी की पूजनीया माताजी का देहावसान तब हुआ, जब वे चौदह वर्ष के थे । माता के वियोग की व्यथा से इनका मन पढ़ाई-लिखाई से ही नहीं, संसार से भी उचट गया । पिताजी आगे की शिक्षा जारी रखना चाहते थे । अतः समझा-बुझाकर इनका नामांकन एक अंग्रेजी स्कूल में कराया गया । उस स्कूल की शिक्षा समाप्त होते ही पिताजी भी उन्हें सदा के लिए छोड़कर परलोक सिधार गये । इन पर दुःखों का पहाड़ टूट पड़ा । संसार की नश्वरता का बोध इन्हें घर-परिवार त्यागकर फकीरी जीवन व्यतीत करने को बाध्य करने लगा । परिवार के लोग इन्हें गृहस्थी के बंधन में बाँधना चाहते थे, लेकिन बाँध नहीं सके ।
देवी प्रसादजी के संबंधी भाई श्रीपद्यदासजी जो इनके प्रति विशेष स्नेह रखते थे तथा राधास्वामी मत के सत्संगी थे और आगरा के डाकघर में नौकरी करते थे । उन्हीं के स्नेहवश देवी साहब हाथरस से आगरा गये । वहाँ इनकी मुलाकात राधास्वामी मत के द्वितीय आचार्य रायबहादुर शालिग्राम साहबजी से हुई, जो पोस्टमास्टर जनरल के पद पर कार्यरत थे । श्रीपद्यदासजी ने उनसे देवी प्रसाद की एकान्त में साधु-जीवन व्यतीत करने की इच्छा बतलायी । राय साहब ने देवी प्रसाद से कहा- श्श् तुम यहीं रहकर सत्संग-भजन करो । इस समय भीख माँगकर साधु-जीवन बिताना कष्टकर है । लोग साधु को भार समझते हैं और श्रद्धापूर्वक भिक्षा नहीं देते हैं । जब तुम्हें भिक्षा की चिन्ता लगी रहेगी, तो साधन-भजन यथासमय कैसे कर सकोगे ? मैं पोस्ट ऑफिस में ही तुम्हारी नौकरी लगवा देता हूँ, जिससे तुम्हारा काम बन जाएगा ।य्
इस तरह समझा-बुझाकर ýú/- रुपये मासिक वेतन पर उन्होंने नौकरी लगवा दी । बाबा देवी साहब को काम के सिलसिले में कई शहरों, कस्बों में जाना पड़ता । सन् ûøøû ईú में इनकी बदली मुरादाबाद हो गयी । वहाँ के एक प्रेमी सज्जन के आवास पर आप रहने लगे । आपने वर्षों की नौकरी से अर्जित सम्पत्ति वंशीधरजी को सौंप दी । वंशीधरजी ने इस धन को व्यापार में लगा दिया और बाबा देवी साहब को ýú/- रुपये प्रति माह की स्थायी आय होने लगी । अब बाबा देवी साहब नौकरी से त्याग-पत्र देकर साधन-भजन में मस्त रहने लगे ।
बाबा देवी साहब का रहन-सहन और भोजन बहुत साधारण था । चाहे कोई भी मौसम हो, वे एक लम्बा काला कुर्ता पहना करते थे । साहू वंशीधरजी के शरीर-त्याग के बाद एक अन्य श्रद्धालु भक्त मुंशी बुलाकीदासजी अपनी कोठी पर बाबा देवी साहब को ले आये । वहीं सत्संग-प्रचार का कार्य होने लगा । इसी बीच बाबा देवी साहब ने ‘बाल का आदि और उत्तर का अन्त’ नामक पुस्तक छपवायी । इस्लाम धर्म के वास्तविक स्वरूप को उद्घाटित करनेवाली एक अन्य पुस्तक ‘शरफे इस्लाम’ की आपने रचना की ।
बाबा देवी साहब ने üö फरवरी ûøøö ईú को अपने दो सहयोगियों मुंशी रघुवर दयाल और बलदेव कहार के साथ धर्म-प्रचार हेतु यात्र आरम्भ की । कई स्थानों लखनऊ, बनारस, डुमराँव, बक्सर, बाँकीपुर, जमालपुर, मुँगेर, भागलपुर आदि की यात्र की । बाबा साहब जहाँ जाते, विज्ञापन-पत्र छपवाकर बँटवाते । श्रद्धालुओं के बीच सन्तमत की बातों को समझाते । धर्म-प्रचार के क्रम में आप आगे बोधगया, मोकामा, समस्तीपुर, दरभंगा, मुजफ्रफरपुर, छपरा, देवरिया, गोरखपुर, बस्ती आदि शहरों में भी गये ।
बाबा देवी साहब का प्रचार-कार्य ûøøö से ûùûö ईú तक अबाध गति से चलता रहा । इसी क्रम में धरहरा, पूर्णियाँ (बिहार) निवासी महर्षि मे ँही ँ परमहंसजी महाराज का संपर्क परम संत बाबा देवी साहब से हुआ । महर्षि मे ँही ँ को परम संत देवी साहब सच्चे सद्गुरु के रूप में सन् ûùúù ईú में मिले और उनकी जन्म-जन्म की चिरसंचित अभिलाषा की पूर्त्ति हुई ।
परम संत बाबा देवी साहब की दया-मेहर इन पर होती रही । बाबा देवी साहब का कथन था- श्श् देखो, यह अपने पिता और पढ़ना-लिखना छोड़कर कुछ वर्षों से साधु के वेश में है । अब यह मेरे पास आया है । मैं इसे अपना लड़का और सगा भाई समझता हूँ । इसलिए इसपर कड़ाई करता हूँ और डाँटता हूँ, जिससे यह शीघ्र ही योग्य बन जाय ।य्
श्श् तुम एक पंथ-दरिया-पंथ के अन्दर थे । अब दरियापंथी नहीं, समुद्रपंथी हो गये । अब तुम अपने को समुद्रपंथी समझो ।य्
महर्षि मे ँही ँ परमहंसजी महाराज को अपने गुरु बाबा देवी साहब से आशीर्वाद इस रूप में प्राप्त हुआ- श्श् आपसे ज्यादह सन्तमत में कोई आदमी नहीं हो सकता । और तन-मन-धन से गुरु की खिदमत करना चाहिये ।य्---- श्श् चाहे आपको खाना मिले या न मिले, लेकिन आपकी बराबरी का मजहब में कोई नहीं हो सकता ।य्
भेद असल सार, परम सरल आर,
बाबा देवी साहब प्रकासिये, जीव उबारत रे की ।
मे ँही ँ युगल कर जोड़ी नवत सर,
धन गुरु परम दयाल, कहल भल भेदियो रे की ।। (महर्षि मे ँही ँ पदावली)
जाहिर जहूर सतगुरु देवि साहब, भेद बतावयँ खासा ।
मे ँही ँ कहत सुनो जो शरण गहैं, लहैं निज घट के विलासा ।।
संतों की ये युक्तियाँ बहुत दिनों से छिपी हुई थीं । बाबा देवी साहब ने इन युक्तियों का जनसाधारण में प्रचार किया । सद्गुरु महर्षि मे ँही ँ परमहंसजी महाराज बाबा देवी साहब को संबोधित करते हुए कहते हैं कि आपकी ही कृपा से ये युक्तियाँ संसार में फैलीं ।
संतन केर यह भेद छिपल छल, बाबा कयल परचार ।
तोहर कृपा से बाबा आहो देवी साहब, मे ँही ँ जग फैली गेल भेद ।।
सन्तन मत भेद प्रचार किया,
गुरु साहब बाबा देवी ने ।।
सन् ûùûö ईú के बाद बाबा देवी साहब ने मुरादाबाद के बाहर जाकर सत्संग-प्रचार का कार्य बंद कर दिया । दूर-दूर से श्रद्धालु भक्तजन मुरादाबाद आकर ही उनके दर्शन और सदुपदेशों का लाभ लेने लगे । ûùûø ईú से बाबा साहब की अन्तर्मुखता प्रगाढ़ होने लगी । वे बाहरी ज्ञान से प्रायः शून्य एवं प्रभु में लीन रहने लगे । ûÿ जनवरी ûùûù ईú से बाबा साहब की अवस्था सर्वथा भिन्न होने लगी । उन्होंने ûø जनवरी के संध्याकाल में मुरादाबाद के सत्संगियों को बुलाया और पास बिठाकर अपना अन्तिम उपदेश दिया- श्श् दुनिया वहम है, अभ्यास करो ।य्
ûù जनवरी ûùûù, रविवार के दिन प्रातःकाल लगभग साढ़े आठ बजे सन्तमत के महान् पुरोधा परम संत बाबा देवी साहब ने सदा के लिए अपने भक्तों-प्रेमियों और संसार से विदा ले ली ।
                                  ''',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // महर्षि मेँहीँ परमहंस जी महाराज
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "महर्षि मेँहीँ परमहंस जी महाराज",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672938259/satsangapp/images/monks/My_project-1_15_ku10ri.png",
                                boxFit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  '''भारतवर्ष के बिहार राज्यान्तर्गत भागलपुर नगर के पतित-पावनी सुरसरि के तट पर अवस्थित कुप्पाघाट में एक शान्त सुपावन आश्रम-परिसर के बीच एक प्राचीन गुफा है। उसी गुफा में सद्गुरु महर्षि मेँहीँ परमहंसजी महाराज ने कठिन तपस्या करके दिव्य ज्ञान प्राप्त किया था।
महर्षि मेँहीँ परमहंसजी महाराज का अवतरण इस धराधाम पर विक्रमी संवत् 1942 के वैशाख शुक्ल पक्ष की चतुर्दशी तिथि तदनुसार 28 अप्रैल, 1885 ई0, मंगलवार को अपने मातामह के यहाँ खोखशी श्याम (मझुवा) ग्राम में हुआ था। यह ग्राम सहरसा जिले (अब मधेपुरा जिले) के उदाकिशुनगंज थानान्तर्गत पड़ता है। आपके नाना का नाम श्रीविद्यानाथ दास था।
आपका पितृगृह पूर्णियाँ जिले के बनमनखी थानान्तर्गत सिकलीगढ़ धरहरा में पड़ता है।
आपके पूज्य पिता मैथिल कर्ण कायस्थ कुलभूषण बाबू श्रीबबूजनलाल दासजी थे एवं माता जनकवती देवी थी। आपके जन्मराशि पर का नाम रामानुग्रहलाल दास था। आपके चाचा पूज्य श्रीभरतलाल दासजी ने प्यार से आपका नाम ‘मेँहीँ लाल’ रखा। आप जन्मजात योगी थे। जन्म-धारण के समय से ही आपके सिर पर सात जटाएँ थीं, जो प्रतिदिन कंघी से सुलझा दिए जाने पर भी पुनः उलझ जाती थीं। जब आप चार वर्ष के थे, उसी समय आपकी पूजनीया माताजी इस संसार को छोड़कर परलोकगामिनी हो गईं।
आपकी प्राथमिक शिक्षा का शुभारम्भ अपने ही ग्राम के विद्यालय में हुआ था। प्रवेशिका की शिक्षा आप पुरैनियाँ जिला स्कूल से प्राप्त कर रहे थे। आपकी अभिरुचि सुख-सागर, रामचरितमानस, महाभारत आदि धर्मग्रंथों की ओर बहुत अधिक थी। 4 जुलाई, 1904 ई0 को आप प्रवेशिका परीक्षा दे रहे थे। उस दिन अंग्रेजी की परीक्षा थी। उसमें एक प्रश्न आया था-
ष्फ़नवजम तिवउ उमउवतल जीम चवमउ श्ठनपसकमतेश् ंदक मगचसंपद पज पे लवनत वूद म्दहसपेीष्ण् अर्थात् ‘निर्माणकर्त्ता’ शीर्षक पद्य को अपने स्मरण से लिखकर उसकी व्याख्या करो।
‘निर्माणकर्त्ता’ शीर्षक कविता की चार पंक्तियाँ इस प्रकार हैं-
ष्थ्वत जीम ेजतनबजनतम जींज ूम तंपेमए
ज्पउम पे ूपजी उंजमतपंसे पिमसकय
फ़नत जव-कंले ंदक लमेजमतकंलेए
।तम जीम इसवबो ूपजी ूीपबी ूम इनपसकष्ण्
इन चार पंक्तियों की आपने जो व्याख्या की, उसका हिन्दी अनुवाद इस प्रकार है-‘हमलोगों का जीवन-मंदिर अपने प्रतिदिन के सुकर्म वा कुकर्मरूपी ईंटों से बनता वा बिगड़ता है। जो जैसा कर्म करता है, उसका वैसा ही जीवन बनता है। इसलिए हमलोगों को भगवद्भजनरूपी सर्वश्रेष्ठ ईंटों से अपने जीवन-मंदिर की दीवाल का निर्माण करते जाना चाहिए।’ व्याख्या करते-करते आपमें वैराग्य तीव्रतम हो गया और आपने रामचरितमानस की यह पंक्ति-‘देह धरे कर यहि फल भाई। भजिय राम सब काम बिहाई।।’ लिखकर उत्तर- पुस्तिका निरीक्षक को सुपुर्द कर दी और उत्कट आध्यात्मिक अन्तःप्रेरणा से प्रेरित होकर साधु-संतों की खोज में निकल गये। कितने पहाड़ों, गुफाओं, मंदिरों और तीर्थस्थलों में भ्रमण किया। कितने दिनों तक भूखे रहे। इसी क्रम में आप एक दरियापंथी साधु जोतरामराय निवासी श्रीरामानन्द स्वामी से दीक्षित हुए। उन्होंने मानस जप, मानस ध्यान और खुल नेत्र से किये जानेवाले त्रटक की क्रिया बतलायी। आपने वर्षों तक इसका अभ्यास किया; लेकिन आत्म-ज्ञान की पूर्णता की पिपासा बनी ही रही। अपनी आशा की पूर्ति नहीं होते देख उसको छोड़ दिया और पुनः साधु-संतों की खोज-ढूँढ़ करने लगे। यह उचित भी था; क्योंकि अध्यात्म-पथ के पथिकों को कच्चे-अधूरे गुरु से पूरी मदद नहीं मिल सकती।
सन् 1909 ई0 में मुरादाबाद-निवासी सद्गुरु बाबा देवी साहब के पत्र-आदेश पर उनके ही शिष्य भागलपुर के मायागंज महल्ले के निवासी श्रीराजेन्द्रनाथ सिंहजी ने आपको दृष्टियोग की दीक्षा दी। उसी वर्ष भागलपुर में विजयादशमी के अवसर पर बाबा देवी साहब के प्रथम दर्शन आपको हुए। श्रीराजेन्द्रनाथ सिंहजी ने आपका हाथ बाबा देवी साहब के हाथ में थमाते हुए कहा कि ये ही आपके सद्गुरु हुए।
बाबा देवी साहब का प्रवचन सुनकर एवं उनके अलौकिक व्यक्तित्व को देखकर आपको बड़ी शांति मिली और आप उनके शरणागत हो गये। 1914 ई0 को पूज्य बाबा देवी साहब ने आपको नादानुसंधान (सुरत-शब्द-योग) की क्रिया बतला दी। आप उस साधना-विधि को करने लगे। आप अपने पितृगृह सिकलीगढ़ धरहरा से कुछ दूर पश्चिम और दक्षिण हटकर एक खेत में अपने से कुआँ खोदकर उसके अन्दर कठिन साधना करने लगे। कुएँ के अन्दर रहते-रहते आपका शरीर पीला हो गया। तब भक्तों ने कहा-‘महाराजजी! शरीर रहेगा, तब तो भक्ति होगी।’ उनलोगों की बात मानकर आपने कुएँ में अभ्यास करना छोड़ दिया; लेकिन साधना में पूर्ण सफलता न होते देख आपने व्यग्रतावश अनेक एकांत स्थानों की खोज की। अंत में भागलपुर के मायागंज महल्ले में पहुँचे। यहाँ की प्राचीन गुफा, एकान्त स्थान और गंगा का रमणीक दृश्य देखकर यह स्थान आपको बहुत अच्छा लगा। अतः आप इसी स्थान में अपनी साधना करने का विचार कर यहाँ निवास करने लगे और गुफा के अन्दर 18 महीनों तक कठिन तपस्या कर कैवल्य पद (संतपद) को प्राप्त कर विश्व में संतशिरोमणि महर्षि मेँहीँ परहंसजी महाराज के नाम से विख्यात हुए।
आपका जीवन सीधा-सादा था। आपका अंतरंग और बहिरंग अभिन्न था। करनी और कथनी में एक मेल था। आप अपने सिद्धांत के प्रति बड़े आस्थावान् थे। आपने गृहस्थ-जीवन से सुदूर रहकर ब्रह्मचर्यमय जीवन बिताया। संत चरणदासजी की वाणी में हमलोग पढ़ते हैं कि पिता से सौ गुणा अधिक माता प्यार करती है। माता से सौ गुणा अधिक प्यार हरि करते हैं और हरि से सौ गुणा अधिक प्यार गुरुदेव करते हैं। सद्गुरु में विशेषता यह है कि वे प्यार भी करते हैं और अवगुण भी दूर करते हैं। यह अवगुण दूर करनेवाला काम माता, पिता और हरि नहीं कर पाते हैं। यह आपके जीवन में अक्षरशः उतरा हुआ था। संसार का कोई भी ऐसा व्यक्ति देखने में नहीं आया, जो आपके सम्पर्क में आकर आपका आदर-प्यार पाने से वंचित रहा हो। यह तो आश्चर्य की ही बात होगी कि आप-जैसे निर्मल संत के पास जाकर भी कोई निराश लौटा हो।
आपकी पोशाक गैरिक रंग में रँगे खादी कपड़े की होती थी। आप खड़ाऊँ, प्लास्टिक चप्पल या कपड़े के जूते पहनते थे। आप बहुत कम एवं सीधा-सादा भोजन करते थे। ईश्वर-चिन्तन ही एकमात्र आपका ध्येय था। आपका सादा जीवन एवं उच्च विचार अनुकरणीय एवं स्मरणीय है। आप 08-06-1986 ई0 को इहलोक-लीला समाप्त कर नश्वर संसार से अविचल धाम चले गये। जबतक सृष्टि रहेगी, आपका नाम रहेगा। यह जीवन-चपला चमक-दमककर अंतरिक्ष में लीन हो जाती है; पर उज्ज्वल कीर्ति यहाँ रह जाती है और जिसकी कीर्ति है, वह सदा जीवित रहता है-‘कीर्तिः यस्य स जीवति।’ संत मरते नहीं हैं। वे शरीर छोड़कर भी अमर हो जाते हैं। ''',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // संत श्रीधर महाराज
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "संत श्रीधर महाराज",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672938519/satsangapp/images/monks/My_project-1_17_xzt1jn.png",
                                boxFit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  'बाद में अपडेट किया जाएगा',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // महर्षि संतसेवी परमहंसजी महाराज
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "महर्षि संतसेवी परमहंसजी महाराज",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672938712/satsangapp/images/monks/My_project-1_18_maqkan.png",
                                boxFit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  'भारतवर्ष में आदिकाल से संत-महात्माओं की अपनी विशिष्ट परम्परा रही है। प्रत्येक कालखण्ड में इस प्रकार की दिव्य आत्माओं ने जन सामान्य का मार्ग-दर्शन कर समाज में आई कुरीतियों को दूर करने में अपना योगदान किया है। दैहिक, दैविक एवं भौतिक तापों से परित्रण हेतु लोगों को धार्मिक जीवन व्यतीत करने का उपदेश दिया है। उन्हीं संतों की परम्परा में पूज्यपाद महर्षि संतसेवी परमहंसजी महाराज भी हुए हैं।'
                                  'पूज्यपाद महर्षि संतसेवी परमहंसजी महाराज का आविर्भाव बिहार राज्यान्तर्गत मधेपुरा जिले (पूर्व सहरसा) के गमहरिया गाँव में सन् 1920 ई0 के 20 दिसम्बर को हुआ। माता-पिता ने इनका नाम महावीर रखा। बचपन में ये महावीर बजरंगवली के अनन्य उपासक भी थे। हनुमान चालीसा इन्हें कंठस्थ था और ये नित्य उसका पाठ किया करते थे।'
                                  'महर्षि संतसेवी परमहंसजी महाराज की शिक्षा मिड्ल तक ही हो पाई। ये आगे नहीं पढ़ सके। घरेलू खर्च के लिए इन्होंने छात्रें को ट्यूशन पढ़ाना आरम्भ किया।'
                                  'एक समय की बात है। ये अररिया जिला (पूर्व पूर्णियाँ) के सैदाबाद ग्राम में अध्यापन कार्य करते थे। यहाँ से कुछ दूरी पर कनखुदिया गाँव में मार्च, 1939 ई0 में बाबा लच्छन दासजी ने सद्गुरु महर्षि मेँहीँ परमहंसजी महाराज की स्वीकृति पाकर मास-ध्यानाभ्यास का आयोजन किया था। महर्षिजी वहाँ मास भर ठहरे थे। यह शुभ अवसर जान इनके अंदर पड़ा भक्ति-बीज प्रस्फुटित हो चला। भक्ति की ज्वाला तेज हो गई। ये उनके दर्शनार्थ चल पड़े। वहाँ सद्गुरु महर्षि मेँहीँ के शरणागत हो, इन्होंने भजन-भेद लेने की इच्छा व्यक्त की। गुरु ने शिष्य की पात्रता को पहचाना। आध्यात्मिक मार्ग पर अग्रसर होने की उत्सुकता देखकर महर्षि मेँहीँ ने इन्हें 29 मार्च, 1939 ई0 में मानस जप, मानस ध्यान और दृष्टियोग की दीक्षा दी। इन्होेंने पुनः इच्छा व्यक्त की कि गुरुदेव इस तुच्छ सेवक को अपने चरणों में रख लेने की कृपा करें। गुरुदेव का उत्तर था-‘आप जो कर रहे हैं, करें। समय पर बुलाऊँगा।’ अनुमति प्राप्त कर आप सैदाबाद चले आए, जहाँ अध्यापन-कार्य करते थे।'
                                  'महर्षि मेँहीँ चरित में वर्णन आया है-1940 ई0 में बभनगामा (भागलपुर) के एक सत्संग में वहाँ के श्रीकालीचरणजी सत्संगी ने महर्षिजी से निवेदन किया-‘सरकार! इनको साथ में रख लिया जाता, तो अच्छा होता। इनके स्वर में बड़ी मिठास है, संतवाणियों का पाठ बहुत अच्छा करते हैं।’ महर्षि मेँहीँ परमहंसजी महाराज ने उत्तर दिया-‘मन तो मेरा भी करता है; लेकिन अभी इनकी माँ को क्यों रुलावें।’ (महर्षि मेँहीँ के दिनचर्या उपदेश, पृष्ठ 149)'
                                  'ये गुरु-प्रदत्त साधना को एकनिष्ठ होकर तत्परता से विधिवत् करते रहे। सन् 1940 ई0 से 1945 ई0 तक ये महर्षि मेँहीँ परमहंसजी महाराज के आज्ञानुसार उनके पास आया-जाया करते तथा भ्रमण-कार्य में सम्मिलित होकर ध्यानाभ्यास करते हुए विविध प्रकार की सेवाएँ भी कर लिया करते। (महर्षि मेँहीँ के दिनचर्या उपदेश, पृष्ठ 119)'
                                  'सन् 1946 ई0 में इनकी माताजी परलोक सिधार गईं, तब गुरुदेव ने इन्हें अपने पास बुला लिया। सत्संग के प्रचार में वे कहीं जाते, तो इन्हें साथ ले लेते। गुरुदेव इनसे ग्रंथ-पाठ कराते और भजन गवाते। इनकी वाणी में मधुरता थी और आवाज सुरीली थी।'
                                  'सद्गुरु महर्षि मेँहीँ इन्हें पुत्रवत् स्नेह देते थे। उन्होंने कुछ वर्षों तक धरहरा आश्रम में रखकर इन्हें मनिहारी आश्रम भेज दिया। मनिहारी आश्रम में गुरुदेव ने इन्हें गुरुमुखी लिपि सिखायी।'
                                  'आपकी इच्छा-पूर्ति करने के लिए महर्षि मेँहीँ परमहंसजी महाराज ने आपको दस वर्षों तक अपनी कसौटी पर कसकर सन् 1949 ई0 में सदा के लिए आपको अपने सेवार्थ रख लिया। तब से 8 जून, 1986 ई0 तक (जब महर्षि मेँहीँ परमहंसजी महाराज ने अपना पार्थिव शरीर छोड़ा) आपने गुरु-सेवा में अपना सर्वस्व अर्पित कर दिया। लगातार 37 वर्षों तक संत सद्गुरु महर्षि मेँहीँ के श्रीचरणों में रहकर जो सेवा-कार्य सम्पादित किया, वह गुरु-शिष्य परम्परा के इतिहास में स्वर्णाक्षरों में अंकित है।'
                                  '2 जून, सन् 1952 ई0 को सिकलीगढ़ धरहरा में प्रसन्न होकर गुरुदेव ने आपको नादानु- संधान की क्रिया बता दी और दिनांक 27 अक्टूबर, 1957 ई0 को संन्यास प्रदान किया।'
                                  'गुरु और शिष्य का संबंध एक जन्म का नहीं, कई जन्मों का होता है। आपकी अटूट सेवा-भक्ति से प्रसन्न होकर आपके गुरु महाराज ने आपको ‘संतसेवी’ का पद प्रदान किया था। तब से आप ‘संतसेवी’ नाम से जगत् में प्रसिद्ध हुए हैं। आप छाया की भाँति अपने गुरु महाराज की सेवा में सतत संलग्न रहे। कभी आप अपने गुरु महाराज को अकेले नहीं छोड़ते थे। यह है आपकी गुरु-सेवा, गुरु-भक्ति। इसीलिए तो आपके गुरु महाराज कहते थे कि ‘मुुझमें और संतसेवीजी में कोई फर्क नहीं है। जो मैं हूँ, सो संतसेवीजी हैं।’'
                                  'आपने अपने श्रीसद्गुरु महाराज की छत्रच्छाया में लगभग अर्द्ध शताब्दी तक रहकर उनकी ऐसी सेवा और साधना की कि गुरु-कृपा से आदिनाम का साक्षात्कार कर आप परमहंस हो गए। कबीर साहब ऐसे संतों के बारे में कहते हैं-'
                                  'आदिनाम निज सार है, बुझि लेहु सो हंस ।'
                                  'जिन जान्यो निज नाम को, अमर भयो सो वंस ।।'
                                  '3 मई, 1997 ई0 में अखिल भारतीय संतमत-सत्संग के 86वें वार्षिक महाधिवेशन में देश-विदेश के धर्माचायोर्ं, महामण्डलेश्वरों एवं विद्वानों ने एक स्वर से आपको ‘महर्षि परमहंस’ की उपाधि से विभूषित कर अध्यात्म-जगत् को गौरव प्रदान किया। तब से आप ‘महर्षि संतसेवी परमहंस’ के रूप में जाने जाते हैं।'
                                  'महर्षि संतसेवी परमहंसजी महाराज का उद्घोष है कि परमेश्वर के महल के द्वार की कुँजी सद्गुरु के पास होती है। सद्गुरु की सहायता के बिना कोई भी उस महल में प्रवेश नहीं पा सकता। सद्गुरु की महिमा बतलाते हुए वे कहते हैं-‘भगवान हमें धनवान बना सकते हैं, पर हमारे निर्माण और निर्वाण तो संत सद्गुरु के हाथों में ही है।’ सद्गुरु ईश्वर के साकार रूप हैं। श्रद्धा और आस्था के साथ उनके चरणों में अपने को न्योछावर करके मानव सदा के लिए भवचक्र से छूट सकता है।'
                                  'मानव-जीवन की सफलता भोगों की बहुलता में नहीं, भगवद्भजन की मादकता में है। सदाचरण सम्पन्न जन मरकर भी अमर रहते हैं; किन्तु आचरणहीन जन जीवित ही मृत होते हैं। जैसे बिना द्रव्य के व्यापार नहीं चल सकता, उसी भाँति सत्संग के बिना आध्यात्मिक जीवन अग्रसर नहीं हो सकता। पशु-पक्षी अपने आहार के लिए, सामान्य जन अपने परिवार के लिए और संत जन विश्व उपकार के लिए जीवन धारण करते हैं। जीव परम पिता परमात्मा से पृथक होकर इस पिण्ड में आया है। यह पुनः वहाँ जाकर उससे मिल जाए, तो स्थिरता आ जाएगी। स्थिरता आ गई, तो शांति मिल गई और शांति मिल गई, तो सुख मिल गया।'
                                  '4 जून, 2007 को देदीप्यमान सूर्य ने इहलौकिक काया का परित्याग कर लौकिक जगत् से विदाई ले ली। ऐसे दिव्य पुरुष, ज्योतिर्मय स्तम्भ महर्षि संतसेवी परमहंसजी महाराज के चरणों में नमन। ',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // महर्षि शाही जी महाराज
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "महर्षि शाही जी महाराज",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672939268/satsangapp/images/monks/My_project-1_19_xpjmgs.png",
                                boxFit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ReadMoreText(
                                  'आप विक्रमी संवत् १९७९ की ज्येष्ठ शुक्ल पक्ष प्रतिपदा, शनिवार तदनुसार सन् १९२२ ई० के जून महीने में उत्तर प्रदेश के देवरिया जिलान्तर्गत छोटी गंडक के तट पर शोभायमान नौतन नामक ग्राम में विषेण क्षत्रिय कुलभूषण बाबू श्रीतिलकधारी शाही एवं श्रीमती सुखराजी देवी की ज्येष्ठ सन्तान के रूप में अवतरित हुए। किसने जाना था कि भविष्य में आप विलक्षण प्रतिभावान् और महान् सन्त बनेंगे आपके तीन छोटे भाई हैं। भाइयों में बड़े होने के कारण सब लोग आपको आदरपूर्वक \'बड़कन बाबू\' कहकर सम्बोधित करते थे ।'
                                  'आपकी प्रारम्भिक शिक्षा गाँव के ही विद्यालय में हुई। आपका विद्यालय का नाम अवधकिशोर शाही था। मनमौजी प्रकृति होने के कारण आप मात्र चौथी कक्षा तक ही पढ़ पाये । भूगोल और गणित में आपकी विशेष अभिरुचि थी। हिन्दी भाषा के अतिरिक्त आपने फारसी भी पढ़ी थी। बचपन से ही आप आध्यात्मिक प्रवृत्ति के थे और नियमित रूप से श्रीहनुमान चालीसा और श्रीदुर्गा चालीसा का पाठ करते थे तथा पीपल के वृक्ष में व सूर्य भगवान् को बड़ी श्रद्धा से जल का अर्घ्य दिया करते थे। आपकी श्रद्धा-भक्ति देखकर आपके एक सम्बन्धी, जो रिश्ते में आपके बाबा लगते थे, आपको \'पण्डितजी\' कहकर सम्बोधित करते थे । पढ़ाई छोड़ने के बाद आपका उपनयन संस्कार बड़ी धूमधाम से आपके ननिहाल फूलपुर, जिला बस्ती में सम्पन्न हुआ धर्म के प्रति आपके अनुराग को देखकर आपके पिताजी आशंकित हो उठे कि कहीं यह पुत्र संन्यासी न बन जाय; उन्होंने ठीक महाराज शुद्धोदन की तरह, जिन्होंने अपने पुत्र सिद्धार्थ (भगवान् बुद्ध) को गृहस्थ-जीवन में बाँध देना चाहा था, उनका विवाह कर देना चाहा। लेकिन आप विवाह के पक्ष में बिलकुल ही नहीं थे। फिर भी पिताजी के हठ के सामने आपकी एक न चली और सन् १९४० ई० में गोरखपुर जिलान्तर्गत माड़ापार की एक कुलीन कन्या के साथ आपका विवाह सम्पन्न हुआ। विवाह के ४ वर्ष बाद आपको एक पुत्र रत्न की प्राप्ति हुई, जिसका नाम \' श्याम नारायण शाही\' रखा गया। इन दिनों श्रीश्याम नारायण शाही सकरोहर (खगड़िया) में निवास करते हैं। इनके अतिरिक्त आपको और कोई सन्तान नहीं हुई ।'
                                  'आप अपने पूर्व संस्कारवश आध्यात्मिक अन्त:प्रेरणा से प्रेरित हो रहे थे । परिवार में रहना आपको अच्छा नहीं लगता था। अक्टूबर, १९४१ ई० में अपने फूफा श्रीभगवतीप्रसाद सिंहजी के आग्रह पर आप उनकी जमीन्दारी की देख-रेख'
                                  'के लिए सकरोहर आ गये। अगस्त, १९४२ ई० में आप पुनः नौतन आये और सन्त कबीर साहब की तरह कपड़ा बुनकर स्वावलम्बी जीवन व्यतीत करने की बात आपने सोची हाटा सबडिविजन के अन्तर्गत समांगी पट्टी में कुछ दिनों के प्रयास से आप हस्तकरघा चलाने में निपुण हो गये। अपने बुने हुए कपड़े आप गरीबों में दान भी करते थे ।'
                                  'आप अन्दर से शान्तिस्वरूप परमात्मा की खोज में व्याकुल रहा करते थे । आप ऐसे सन्त सद्गुरु की खोज कर रहे थे, जो आपकी जिज्ञासा और आध्यात्मिक पिपासा को शान्त कर सकें। वैराग्य की उठती तरंगें प्रत्येक सांसारिक बन्धन को अस्वीकार करना चाह रही थीं। आप वैरागी बनकर साधना करने की बात सोच रहे थे, तभी सन् १९४४ ई० में बाबू भगवती प्रसाद सिंह का देहान्त हो गया । उसके बाद आप अपने जन्मस्थान नौतन चले आये। लेकिन फिर उनके परिवार के विशेष आग्रह एवं पिता की आज्ञा से आप पुनः सकरोहर आ गये और उनके कारोबार की देखरेख करने लगे । सन् १९४५ ई० में आपने महेशखूंट स्टेशन पर लोगों की भीड़ देखी। पूछने पर ज्ञात हुआ कि ये सत्संगी लोग हैं और सन्तमत सत्संग के वार्षिक अधिवेशन, पनसलवा से लौट रहे हैं, जहाँ पूज्यपाद सद्गुरु महर्षि मे ही परमहंसजी महाराज पधारे थे सत्संग-प्रेमियों के मुख से सन्तमत विषयक चर्चा एवं महर्षिजी का गुणगान सुनकर आपके मन में यह विश्वास बद्धमूल हो गया कि महर्षिजी पहुँचे हुए सन्त हैं इसी विश्वास ने आपको महर्षिजी के दर्शन करने को प्रेरित किया । यह विश्वास इतना तीव्रतर हुआ कि आपने महर्षिजी का दर्शन कर उनकी शिष्यता ग्रहण करने का पक्का इरादा मन में बना लिया। इस निश्चय के बाद आप ऐसे सुपात्र की तलाश करने लगे, जो आपको महर्षिजी के श्रीचरणों में पहुँचा दे ।'
                                  'चाह को राह मिल ही जाती है। संयोगवश आपकी मुलाकात सत्संगी श्रीजगरूप दासजी से हुई। उनके साथ आप पूज्यपाद रामलगन बाबा सहित परबत्ती (भागलपुर) आश्रम पहुँचे। आश्रम परिसर में पहुँचते ही आपकी प्रसन्नता का ठिकाना न रहा, जब आपने अवतारस्वरूप अलौकिक व्यक्तित्व के दिव्य पुरुष, त्रयताप से सन्तप्त जीवात्मा के उद्धारकर्त्ता महर्षिजी को कुर्सी पर विराजमान देखा । आपने तत्काल उनके पावन युगल चरणों में प्रणिपात किया । उस समय आप अपने भाग्य पर फूले नहीं समा रहे थे। वह क्षण आपके जीवन का सर्वाधिक प्रसन्नता का क्षण था नाम, पता पूछने के बाद महर्षिजी ने आगमन का उद्देश्य जानना चाहा, तो आपने हठात् कहा कि गुरुमुख होने आया हूँ। महर्षिजी ने कहा- “पहले देख लूँगा कि आप ध्यान - भजन करेंगे, तब दीक्षा दूँगा।" आप उसी दिन से तन-मन से'
                                  'सेवा करते हुए वहीं रहने लगे और जबतक सत्संग होता रहा, सत्संग वचनों का लाभ उठाते रहे। आपकी सच्ची लगन देखकर २३ फरवरी, १९४६ ई० को महर्षिजी ने आपको मानस जप, मानस ध्यान और दृष्टियोग की दीक्षा दी। आपके साथ ही पूज्य श्रीरामलगन बाबा भी दीक्षित हुए। आप बड़ी श्रद्धा और पूरी तत्परता से साधन - भजन करने लगे । आपकी पूजा का विस्तृत विधि-विधान देखकर श्रीवैद्यनाथ बाबू (स्व० भगवती बाबू के सुपुत्र) आपको पूज्य भाव से \'साधु बाबा\' कहकर पुकारते थे अपनी साधुता और उदारता का परिचय देते हुए आपने उनसे कभी कुछ पारिश्रमिक के रूप में नहीं लिया। उनसे गरीबा तथा दीन-दुखियों की प्रायः मदद करवांते थे आपकी परदुःख-कातरता, परोपकारिता और सहानुभूतिपूर्ण व्यवहार से उस क्षेत्र के लोग बहुत प्रसन्न थे। लोगों के आग्रह पर कुछ दिनों तक अस्थायी रूप से आपने मुखिया के पद को सुशोभित किया था और बाद में बहुत समय तक सरपंच भी बने रहे ।'
                                  'सन् १९५६ ई० में साधन-भजन करने के लिए आपने निजी रुपयों से पाँच बीघे जमीन खरीदकर एकान्त में फूस की एक कुटिया भी बनवाई। उसी कुटिया में आपका अधिकांश समय साधना में व्यतीत होने लगा और जमीन की आय से उदर - पूर्ति की समस्या भी सुलझ गई। सन्त कबीर साहब की भाँति आप बड़े सन्तोषी व्यक्ति हैं आपके जीवन का मूलमन्त्र ही है। :'
                                  'साईं इतना दीजिये, जामें कुटुंब समाय मैं भी भूखा ना रहूँ, साधु न भूखा जाय ॥'
                                  'अपने जीवन में आपने इन आदर्श वाक्यों को चरितार्थ कर लिया है। वस्तुतः एक सच्चे साधु को इससे अधिक चाहिए भी क्या ? एक दिव्य कर्मयोगी की तरह आपने किसी के आगे हाथ नहीं फैलाया। बीच-बीच में गुरुदेव के दर्शन और प्रवचन का लाभ भी उठाते रहे । साधना के पथ पर आपकी प्रगति को देखते हुए सन् १९६२ ई० की १८ जनवरी को गुरुदेव ने आपको शब्दयोग की दीक्षा दी। नम्रतापूर्वक पत्र लिखकर आपने गुरुदेव के श्रीचरणों में आग्रह किया था कि यद्यपि मैं शब्दयोग की क्रिया करने के योग्य नहीं हूँ, तथापि जानने की इच्छा है।" गुरुदेव ने प्रसन्नतापूर्वक कहा था, “आपको शब्दयोग की क्रिया नहीं बताऊँगा, तो किसे बताऊँगा ?" श्रीगुरु महाराज ने शब्दयोग की क्रिया आपको बता दी ।'
                                  'शब्दयोग की साधना करते हुए अनाम पद की ओर आपके बढ़ते कदमों को -देख गुरुदेव ने सन् १९६४ ई० की २ फरवरी को स्वेच्छापूर्वक संन्यास-वेश दिया संन्यासी वेश में आपका नामकरण करते हुए गुरुदेव ने कहा, “आज से इनका नाम'
                                  '\'शाही\' रहेगा और \'स्वामी\' पदवी रहेगी। कोई-कोई इन्हें \'शाही साहब\' भी कहेंगे।" उसी दिन से आप \'शाही स्वामी\' के नाम से प्रसिद्ध हो गये। गुरुदेव के द्वारा नामकरण की सूचना \'शान्ति-सन्देश\' पत्रिका में प्रकाशित कर दी गई। सन् १९६४ ई० में ही गुरुदेव ने आपको दीक्षा देने का अधिकार दे दिया। लेकिन आप यह सोचकर कि \'गुरु आगे जो करे गुरुआई, ताको नरक लिखा है भाई\' दीक्षा देना उचित नहीं माना। आज तो कुछ लोग गुरु महाराज की जगह पर अपनी गुरुता कायम करना चाहते हैं, जो कि एक शिष्य का कर्त्तव्य नहीं हो सकता सन् १९६७ ई० में गुरुदेव ने आपको इतमादी सत्संग में अपना रजिस्टर देकर भजन-भेद देने का जोरदार आदेश दिया। इसके पहले महर्षिजी ने अपने किसी भी शिष्य को भजन -भेद देने का आदेश- अधिकार नहीं दिया था। गुरुदेव के आदेश को शिरोधार्य करते हुए उसी समय आपने २७ व्यक्तियों को भजन -भेद दिया और तब से आज तक आपने लाखों व्यक्तियों को दीक्षित किया है और गुरु महाराज को ही इष्ट बताया है।'
                                  'सन्तमत की केन्द्रीय शाखा महर्षि में ही आश्रम, कुप्पाघाट की व्यवस्था के लिए किसी कार्यकुशल, नीति-निपुण, कर्त्तव्यनिष्ठ, त्यागी, उदार प्रबन्धक की खोज गुरुदेव कर रहे थे। उनकी कृपा-दृष्टि आप पर जा टिकी आप सन् १९७१ ई० में कुप्पाघाट आश्रम बुला लिये गये और गुरु महाराज की पावन जयन्ती के अवसर पर आपको सर्वसम्मति से व्यवस्थापक के पद पर आसीन किया गया। आपकी आध्यात्मिक अनुभूति, गुरुदेव के प्रति एकनिष्ठ श्रद्धा और भक्ति ने आपको गुरु महाराज के हृदय में स्थान दिला दिया । अन्तर्यामी गुरुदेव आपके हृदय की श्रद्धा और प्रेम को अच्छी तरह जानते थे। गुरुदेव बार-बार कहा करते थे कि "शाही स्वामी मेरे हृदय हैं।" कोई कल्पना करे कि एक सन्त सद्गुरु का हृदय कैसा होगा ? रामचरितमानस में गो० तुलसीदासजी महाराज ने सन्त-हृदय के सम्बन्ध में कहा है कि-'
                                  'सन्त हृदय नवनीत समाना। कहा कविन्ह पै कहइ न जाना ॥ निज परिताप द्रवइ नवनीता। परदुख द्रवहिं सन्त सुपुनीता ॥ आपने गुरुदेव से कई बार प्रार्थना की कि मुझे व्यवस्थापक पद से मुक्त किया जाय, लेकिन आपके संरक्षण में आश्रम का जितना विकास हुआ, उसका विवरण देना सम्भव नहीं है गुरुदेव आपकी कार्यकुशलता देखकर हर बार यही कहते-“ शाही स्वामीजी ! जबतक मैं शरीर में हूँ, तबतक आप भी व्यवस्थापक बने रहें ।" गुरुदेव के आदेश आप पालन करते रहे।'
                                  'गुरुदेव ने अत्यधिक शारीरिक शिथिलता के कारण सन् १९८३ ई० से सत्संग प्रचार कार्य बन्द कर दिया और कहा कि अब आप ही प्रचार कार्य कीजिये । तभी से सत्संग के प्रचार-प्रसार का सारा दायित्व आपके कन्धों पर आ गया। इसके पूर्व भी सत्संग प्रचार हेतु गुरुदेव आपको ही भेजा करते थे। प्रचार कार्य और व्यवस्थापन साथ-साथ करने के कारण आपकी परेशानी बहुत बढ़ गई थी। लेकिन एक समर्पित शिष्य की तरह गुरु की आज्ञा की अवहेलना कैसे करते ? ८ जून, १९८६ ई०, रविवार को गुरुदेव ने अपने जीवन के एक सौ एक (१०१) वर्ष पूरे किये और ब्रह्मलीन हो गये इसके बाद अक्टूबर, १९८६ ई० को व्यवस्थापक के पद से आपने त्यागपत्र महासभा को सौंप दिया, लेकिन महासभा ने आपसे सभी विभागों की देख-रेख करने का नम्र निवेदन किया। सच तो यह है कि आपके कार्यकाल में आश्रम की दिन दूनी रात चौगुनी तरक्की होती रही। आपने जिस तरह से आश्रम के व्यवस्थापन का कार्य किया, उसकी अमिट छाप प्रत्येक आश्रमवासी के हृदय पर अंकित है । यदा-कदा आश्रमवासी कहा भी करते हैं कि पूज्य श्रीशाही बाबा जैसे कोई भी व्यवस्थापक नहीं हुए'
                                  'गुरुदेव कहा करते थे- \'सत्संग ही मेरी साँस है।\' आपने भी गुरुदेव के इस सूत्रवाक्य को हृदयंगम कर लिया है। \'सादा जीवन और उच्च विचार\' की आप प्रतिमूर्ति हैं। यदि आपको \'Standard of santmat, Standard of charac- ter and Standard of morality\' कहा जाय तो अतिशयोक्ति नहीं होगी ।'
                                  'आप भगवान् बुद्ध की तरह धन, पुत्र, स्त्री का मोह त्यागकर संन्यासी जीवन में दृढ़तापूर्वक स्थापित हैं घर का परित्याग कर देना सरल है, परन्तु स्मरण-प्रवाह और चित्त-प्रवाह से हटा देना सरल नहीं है। आप जहाँ भी रहते हैं, वहाँ प्रसन्नता व्याप्त हो जाती है। स्वयं गुरुदेव भी आपकी विनोदपूर्ण बातें सुनकर हँस पड़ते थे । आपका स्वरूप हाथरस के सन्त तुलसी साहब के चित्र की याद दिलाता है । सत्साहित्य के क्षेत्र में भी आपका अमूल्य योगदान है। आपके द्वारा रचित पुस्तकें हैं- (१) श्रीशाही स्वामी भजनावली, (२) आपन काज सँवारु रे, (३) सन्तमता बिनु गति नहीं (४) सन्तमत की सार साधना और (५) संसार और परमार्थ । इनके अतिरिक्त आपके प्रवचनों के अंश \'शान्ति सन्देश\' पत्रिका में अनवरत रूप से प्रकाशित होते रहते हैं। लोगों के हृदय में आपकी साधुता की अमिट छाप |'
                                  'श्री सद्गुरु महाराज के पावन चरणों में नतमस्तक होकर प्रार्थना है कि आप स्वस्थ एवं दीर्घायु रहकर अध्यात्म के पथिकों का मार्ग-दर्शन करते रहें।',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // महर्षि योगानंद परमहंस जी महाराज
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: cardColor.withBlue(1000),
                        shadowColor: Colors.black87,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "महर्षि योगानंद परमहंस जी महाराज",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              FancyShimmerImage(
                                imageUrl:
                                    "https://res.cloudinary.com/de9omilub/image/upload/v1672941229/satsangapp/images/monks/My_project-1_21_dq5hig.png",
                                boxFit: BoxFit.cover,
                                shimmerBaseColor: Colors.orange,
                                shimmerHighlightColor: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ReadMoreText(
                                  'पूज्य स्वामी योगानन्द जी महाराज की संक्षिप्त जीवनी'
                                  'भारत कृषि प्रधान देश के रहते हुए ध्रुषि प्रधान देश कहलाते हैं। सर्वेश्वर की सृष्टि में संत एक अनमोल रत्न हैं। वे आधि भौतिक प्रथतापों से मुनसते मानवों को ज्ञानरूपी अमृत का वर्षण कर शान्ति का पथ प्रशस्त करते है। संत निर्गुण निराकार शान्ति स्वरूप सर्वेश्वर के सगुण साकार दिव्य विभूति रूप हैं। संतों का जीवन सम्पूर्ण मानवता के लिए समर्पित होता है। इनकी शिक्षा जाति- पाँति के भेद भाव और साम्प्रदायिक संकीर्णता से पूरे होती है। गणन संतों ने अपने नामों पर कोइ सम्प्रदाय नहीं आमदार व सूचनाथा, परन्तु उनके शिष्यों ने अपने गुरु के नाम पर सम्प्रदाय की स्थापना की। वे 13 अपने- अपने सम्प्रदाय में इतने चिपक गये कि एक दूसरे सम्प्रदाय को हेय दृष्टि से देखने लगे। 17 जिससे धार्मिक कट्टरता, संकीर्णता, पाखण्ड और विद्वेष की ज्वाला समाज में फैल गयी इस अज्ञानता की रात्रि में दिव्य ज्ञान की मशाल समय-समय पर संतों ने प्रज्वनित की। संतों की इस महान कड़ी में उत्तर प्रदेश प्रांत की पवित्र वसुन्धरा में बसनेवाले संत तुलसी साहवने जोरदार शब्दों में कहा कि- मैं सारे संतों को मानता हूँ। संत ही हमारे इकट है। उन्होंने सेतो के विचारों का उदारता पूर्वक समाज में प्रचार किया। उनके विचारों के समर्थक संत राधा स्वामी \'साहब भी हुए। इनके बाद मुरादाबाद (उत्तर प्रदेश) निवासी बाबा देवी साहब ने संतमत -सत्संग नाम से एक संस्था कायमकी, और इसके द्वारा इन्होंने भी संतों का समान कि आदर करते हुए उनके विचारों का प्रचार किया। परम संत बाबा देवी साहब के ज्ञान से प्रभावि'
                                  'होकन बिहान, राज्यान्र्गत सहरमा जिल्म अब मधेपुरा जन की पावन भूमि पर अवतरित संत महर्षि मेँहीँ परमहंस जी महाराज ने संतमत सत्संग के नाम की कल्याणकारी एवं मोक्षदायनी ज्ञानों का प्रचार- प्रसार जीवन पर्यन्त किया। इनके कई प्रखर औ पर संत साधनशील शिष्य हुए। जिनमें मस्तिष्क स्वरू महर्षि संतसेवी जी महाराज एवं हृदय स्वरूप महर्षि शाही स्वामी जी महाराज मुख्य थे महर्षि शाही स्वामी जी महाराज महापरिनिर्वाण के पूर्व अपनी अक्षुन्न साधन प्रचार के लिए मुख्य रूप से स्वामी चतुरानन्द जी महाराज, स्वामी वेदानन्द जी महाराज, स्वामी योगानन्द जी महाराज को लिखित रूप से नियुक्त कर निश्चिन्त हो गये । गुरुतर भार का निर्वहन करते हुए सरलता, सहजता, विनम्रता की प्रतिमूर्ति विद्वान प्रवक्ता साधनशील कर्म6 योगी सदाचार का विग्रह बाल- ब्रह्मचारी स्वामी योगानन्द जी महाराज भारत ही नहीं देश-विदेश विभिन्न प्रांतों में संतों के संदेश को घर-घर फैला रहे हैं जिला, प्रांतीय, राष्ट्रीय और अर्न्तराष्ट्रीय स्तर पर भी अधिवेशन कराके संतमत सत्संग का प्रचार- प्रसार कर रहे हैं।'
                                  'पूज्यपाद स्वामी योगानन्द जी महाराज का जीवन ही एक विचारधारा है, जिसमें इनके कर्म वचन एवं साधना की गंगा सद्‌गुरु महर्षि मेंही परमहंसजी \'महाराज की असीम अनुकम्पा से अनवरत प्रवाहित कि हो रही हैं। साथ ही पूज्यपाद महर्षि संतसेवी जी महाराज एवं महर्षि शाही स्वामी जी महाराज के साथ-साथ सत्संग-प्रचार में साधना के द्वारा आत्मशक्ति का प्रदीप जलाकर लोगों को प्रयतायों से मुक्त करने के लिए सत्यधर्म में अपना जीवन समर्पित करने वाले मिथिनांचल का गौरब बाल ब्रह्मचारी विद्वान संत स्वामी योगानन्दजी महाराज की जीवनी के विषय में कहना सूर्य 21-121 को दीपक, दिखलाने-जैसी बात होगी। इनकी ++ वाणी तो आर्य वाणियाँ हैं, जो अमृत-सदृश'
                                  'कल्याणकारी एवं प्रेरणादायी हैं। इनकी वाणी में गुरुदेव की तरह ही चुम्बकीय आकर्षण है। जब स्वामी जी अखिल भारतीय संतमत सत्संग महाधिवे शन में लाखों की संख्या में उपस्थित लोगों के बीच प्रवचन करने लगते हैं, तो लोग मंत्र मुग्ध शांत भाव से तब तक सुनते रहते हैं, जबतक इनका प्रवचन समाप्त नहीं हो जाता । होकर आपके जीवन चरित्र के बारे में प्रायः जोम पूछा करते है। इसलिए मैं इनके जीवन के संम्वन्ध में थोड़ा वर्णन करने जा रहा हूँ परिवार भूमि धन्य पितु मात घन, घन-धन कुन परिवार । धन्य सुदिन धन-धन घड़ी, जब सन्त मेहि अवतार ।।'
                                  'संतन केरी दया से, उपने बहु आनन्द ।'
                                  'कोटि विघ्न पन में टरे, मिट सकन दुख इन्द्र ।।'
                                  'वंश वृक्ष- श्रीबाबू बैधनाथ यादव'
                                  'श्रीजावू राम यादव श्री कंगाली यादव थी बुहुयादव श्री जैगुयादव भी सुर्भिन्दाय'
                                  'श्री दरसन यादव श्री बैशी यादव'
                                  'श्री राम छोटयादव'
                                  'पानी मैनी देवी'
                                  'श्री हिभरण करता यादव'
                                  'एक पुत्री,'
                                  'भी खुदो यादव श्री रामजी यादव भी जुआलाल शादव श्री मेश लाल ग एक बहन दायचैन देवी (बाळ ब्रह्मचारी)'
                                  '19. श्री महेन्द्र नारायण शदव श्री सत्य ना०यादव श्री हरिना०यादव श्री भोग नारायण (स्वामी योगानन्द) और तीन बहन श्रीमती आनन्दी देवी, श्रीमती कालन्दी देवी, श्रीमती देवकला देवी -यही योग नारायण आगे चलकर स्वामी योगानन्द जी महाराज'
                                  'के नाम से विश्व विख्यात हुए।'
                                  'चार भाइयों में सबसे छोटे होने के कारण लोग प्यार से'
                                  'आपको \'निसी\' कहकर सम्बोधित करते थे।'
                                  'बड़े तीनों भाई एम.ए एवं एमएस-सीमा स्तरीय विद्यालय (10+2) में प्रधानापक (Principal) केपद से सेवानिवृत हुए है। भाई के लड़के सब इन्जिनियर, डाक्टर एवं शिक्षक है। भाई के पुत्रवधु भी नौकरी में है।'
                                  'आपने अपने पैतृक सम्पत्ति (60) साठ विधा जमीन को तिलांजलि देकर बैराग्य जीवन को अपनाया 11. आप बाल ब्रह्मचारी है। आयु भी एम.एस.सी (द्वय) भौतिक विज्ञान से प्रथम श्रेणी से उतीर्ण है।'
                                  'आपका जन्म सहरसा जिलाब जिलान्तर्गत नौहट्टा a प्रखण्ड के कोशी नदी के तट पर अवस्थित हरीतमा की चादर ओढ़े सुहावना सा गाँव महम्मदपुर है। महम्मदपुर ग्राम को स्वामी योगानन्द जी महाराज की जन्मभूमि होने का सौभाग्य प्राप्त हुआ'
                                  'बाल्यकाल माँ कौशिकी ( कोशी नदी) के विस्तृत प्रांगण में सदियों से अनेकानेक साधु-संतों की जन्म स्थली, शास्त्रार्थ स्थली रही है। " इतिहास साक्षी है कि इसी पावन क्षेत्र में दक्षिण भारत के केरल प्रांत के महातेजस्वी आचार्य शंकर विद्या नगरी काशी से कोशी क्षेत्र सहरस जिला के प्रख्यात विद्वान मंडन मिश्र और उनकी धर्मशीला अर्घारिन बिदूषी भारती जो स्वयं भगवती वीणा पाणी स्वरूपा थी, के मकान में शास्त्रार्थ हेतु आये थे। इसी धरती पर महपुरा ग्राम में साक्षात् भगवान् शंकर से वार्तालाप करने वाले महान व्यांग कारू स्विरहर बाबा हुए। जिनके नाम पर * अभी भी हजारो मन व रोड की आमच साउनका अभिषेक किया जाता है। इसी जिला में मानस भरान - चमत्कारी विद्वान संत लक्ष्मीनाथ गोस्वामी हुए इसी सहरसा जिला भवमधेपुरा मे संतमत के आधार स्तम्भ धर्मकील महर्षि मेंही परमहंस जी महाराज का अवतरण स्थली है। इसी कोशी - तपः स्थानी में महर्षि सन्तसेवी जी महाराज, * महर्षि हरिनन्दन जी महाराज का भी जन्म स्थली इसी श्रृंखला में संतमत के प्रचारक जिला का ... गौरव गुरु भक्ति, निष्ठा, सादगी, सरलता नम्रता एवं अद्वितीय प्रतिभा के धनी विद्वान प्रखर प्रचारक साधु स्वामी योगानन्द जी महाराज हुए हैं। श्री बाबू रामजी यादव को आपके सौभाग्यशाली - पिताश्री कहनाने का सौभाग्य मिला तो'
                                  'भक्तिमती दुखनी देवी को आपकी माताश्री होने का 1 आपका जन्म उफरवरी 1960 ई0 को हुआ था।'
                                  'अपने माता पिता के संस्कार धार्मिक स्वभाव एवं पूर्व जन्म के संस्कार के प्रभाव से बाल्यकाल से ही आपके अन्दर विलक्षण प्रतिभा परिलसित होने लगी थी। बड़े भाई बहन माँसागरी थे लेकिन आप T जन्मजात शाकाहारी रहे। कभी बड़े बचपन में अन्नप्रासन के बाद बड़े भाई आपके मुँह में चावल में महानी मिलाकर दिखे, तो आप उल्टी कर दिये। आपके पिताजी प्रतिदिन घर से 5 कि०मी० की दूरी पर शंकर भगवान के मंदिर देवनवन पूजा करने जाओ। थे। जो जीवन के अन्ततक निर्वर्तन किये और अपराहकाल तीन बजे दुलसीकृत रामायण का पाठ अपने दरवाजा पर किया करते थे। करते थे।'
                                  'आप भी प्रतिदिन संध्याकाळ वेल पत्र मोड़कर लाते थे और उसपन चन्दन से रामनाम लिख शिव लिंग पर दिवनवन शिव मंदिर) र चढ़ाते थे। घंटो भगवान शिव मंदिर में पूजा-पाठ ध्यान में लीन रहा करते थे। धार्मिक कार्यों में आपकी विशेष रूचि देखी जाती थी।'
                                  'शिक्षा - आपकी शिक्षा गाँव में ही अपने दरवाजा पर शिक्षक महन्थी नाल दास से प्रारम्भ किया गया। अत्यन्त मैद्यावी होने के कारण 4 वर्ष में 5 को की शिक्षा ग्रहण करनी। पुन: 66 वर्ग में मुरादपुर मिडिल स्कूल से आपका नामांकन करवाया गया। पुन: क. दि० उच्चविद्यालय धरहना मुरादपुर से बिहार बोर्ड ग्यारही तक आपने की शिक्षा ग्रहण की। विहार बोर्ड उहाकी में प्रथम श्रेणी से उत्तीर्ण होने के बाद आपका नामांकन 1976 ई0 में ठाकुर प्रसाद महाविद्यालय आईएससी में मधेपुरा में करवाया गया।'
                                  'उसी वर्ष जनवरी में अपने मित्र प्रियतम कुमार जी के साथ घर से भागकर मानसी में गंगास्नान किये और ट्रैन से गौरखपुर गोरधनाथ સફળતા પ્રાપ્ત मंदिर चले गये। वहाँ सरंगी लेऊन घूमने लगे। एक स्टेशन पर एक रोज टी०डी० के० पकड़ लिये। ट्रेन से उतार कर अपने कक्ष ले गये। क्योंकि इमलोगो के पास टिकट नहीं था टी.टी.ई. ने कहा क्यों इतना कम उम्र में था। साधु बने हो। इमलोगों की बात सुनकर टी0टी0 ने कहा देखो घर में माँ-पिता बहुत दुखी होंगे। चले जाओ घरा फिर टी०टी० साहब ने अपने पैसे से सहरसा तक का टिकट कटा कर ट्रेन में बैठा दिये'
                                  'उसी वर्ष महर्षि मेंही परमहंस जी महाराज का प्रथमदर्शन वामी जी मे मधेपुरा में हुआ। उनके प्रवचन से में का भी प्रभावित हो गया है पूर्व के जन्म "सुप्त संस्कार प्रज्वलित हो गया'
                                  'ईश्वर दर्शनकी विरह वेदना सताने लगी। 14 अगस्त 1976 को सहरसा से घाटगाडी (ट्रेन) से भागलपुर से चले गये 15 अगस्त 1996 30 रविवार को महर्षि मेँहीँ परमह जी महाराज से दीक्षा ग्रहण किये। उस समय गुरुदेव स्वयं दीक्षा नहीं देते थे। लेकिन स्वामी रामानन्द बाबा के विशेष आग पर भी कुछ समझाये। पूज्य गुरुसेवी स्वामी आगीरथ बाबा वहाँ खड़े थे। उन्होने मुजसे स्वामी जी पूछे \'समझे\' स्वामी जीने कहा ठीक से नहीं समझे। तो पूज्य भागीरथ बाबा परामर्श दिए, जाइये पूज्य संतसेवी बाबा से समझ लिजिए मानस ध्यान समझाने के वाद स्वामीजी को भ्रम पैदा हो गया कि भगवान का ध्यान करने नहीं बतलाये। मन में छन्द इनको चलने लगा। चूँकि बचपन से शंकर भगवान की पूजा करते थे। अपने साथी के साथ दशहरा (दुर्गा आरमी में घर से मंदिर तक अपने साथियों के साथ कुण्ड प्रणाम देते थे।'
                                  'आईएएस.सी परीक्षा देने के बाद पुन: कुप्पाघाटू, भागलपुर आप गये और पूज्य स्वामी संतसेवी जी महाराज से अपनी अर्न्तदृन्द के बारे मभनय सुनाये। बाबा सुनकर पुन: विस्तार पूर्वक समझाये और इनको बोले आपके सहरसा में ही एक अच्छे साधक है श्री रामनन्दन प्र० वर्मा नौकरी भी सिचाई विभाग में करते हैं। उनसे मिलते-जुलते रहिये वे आपके सारे शंकाओं का समाधान करते रहेंगे आई०एस-सी० कुत्तीर्ण होने के बाद पुन: आपका नामांकन बी.एस.सी ( भौतिक विज्ञान ऑनर्स) में हुआ। 1981 ई0 में सहरसा कॉलेज सहरसा मे परीक्षा चल रहा'
                                  'था। अन्तिम दिन परीक्षा छोड़कर हिमालय के ग्रीवन्ता पहाड़ के गुफा में तपस्या में सीन करने गये। दो वर्ष लगातार उपी पहाड़ पर रहे गये। पुन: एक साथी के साथ सारे तीर्थ का भ्रमण भी करने खागख लगे गंगोत्री, यमनोत्री, ष्ये जोशीमठ, बद्रीधाम, केदारनाथ अमरनाथ गुफा, वैष्णोदेवी, रामेश्वरम् कन्याकुमारी द्वारिकाधीश, पावापुरी, जगन्नाथपुरी, कुरुक्षेत्र, नैमिशारण्य अंजना पहाड़, मुदगल आश्रम, अमृतसर, शीशमहल ताजमहल, मथुरा वृन्दावन कावेरी, व्यास भाश्रम अयोध्या आदी जगहो पर भ्रमण करतेहपुन,श्रीव'
                                  'पहाड़ परभागये। वहाँ एक घटना इनके साथ हुई। संध्या समय एक रोज अजगर सर्प देह पर र गये। स्वामी जी को लगा 1 की अजगर शायद निगल गये। आवाज आती थी आँख वन्द 1. करो । आँख तो घेबन्द कर किये। लेकिन थोड़ी देर में आँख खोलकर देखते हैं तो सर्प थोडी दूर परा बैठा है। रात आप वहीं विताये। सुबह में विचार खाई कि गुरु महाराज जी को इस घटना के सम्बन्ध मैं कहना चाहिए। तो आप वहाँ से कुप्पाघाट सा गये । ज्योंहि गुरुनिवास में आप प्रवेश करने लगे अन्तयोमी गुरुदेव एकटक आपको देखने जुगे । ज्योहिं आप प्रणाम किये। गुरु महाराज ही पूछ बैठे साँप से मुकर मुलाकात कर आगये। आश्चर्य चकित हो आप रोने लगे। सोचने लगे कहाँ हिमालय कहाँ कुप्पाघाट कैसे मे जाने। अवश्य ब्रह्मश्रुषि हो उसी नेवरे की बात हो वहाँ अखिल भारतीय सन्तमत महासभा की बैठक थी। उस बैठक में स्वामी रामानन्द 1 बाबा भी गये थे। उसी अवसर पर कुप्पाघाट में उनका दर्शन पुन: हुआ। बाबा बोलने लगे आपके धन के आएगा. लोग बहुत चिन्तित है। आप परीक्षा भी छोड़ दिये। चलिए मेरे साथ सहरसा। रामानन्द बाबा इन्हें साथ लेते आये सहरसा और सन्तमत सत्संग मन्दिर गाँधी पथ सहरसा में रहने को आदेश दिये। कुछ दिन गाँधी पथ में रहने के पश्चात बाबा बोले परीक्षा भी दे दिजिए समानन्द बाबा का आदेश पाकर आप बी० एस-सी. (B.Sc.) की परीक्षा दिये और प्रथम श्रेणी से उतीर्ण हुरा स्वामी नामानन्द बाबा पुन: आदेश दिये। एमएस-सी भी करनिविष्ठा उन्होने ने सारा खर्च अपने ऊपर जेकर पुत्रवत स्नेह के कर प्रेरित कर एम.एस.सी (भौतक विज्ञान) में नामांकन मिथिला विश्वविद्यालय करभंगा मे 83-85 Session में करना दिये । वर्षों रामानन्द बाबा की सेवा में आप हें सामात गुरुमहाराज का चमत्कार इनके जीवन मे हुआ जिस दिन एमएसस.सी परीक्षाका पहला पत्र था 11उसी दिन राँची जिलाधिवेशन था। इन्होंने निर्णय लिया। सत्संग नहीं छोड़ेगे। तो परीक्षा छूट गया। सत्संग अधिवेशन के बाद जब स्वामी योगानन्द university गये तो जानकारी मिली कि इसबार university नियम'
                                  'बदल गया। जो विद्यार्थी पहला पेपर नहीं दिये है और या सभी पेपर देंगे तो रिजल्ट हो जायगा। स्वामीजी कुश का और सभी पेपर की परीक्षा दे दिए। और रिजल्ट होगया। आज तक मात्र एक साल के नियम पैदल पहले वह नियम नहीं था। और बाद में भी नियम नहीं रहा 1986 ई० वाँची विश्व विद्यालय में प्रोफेसर के पद पर योग दान किये। फिर रिजिनेशन देकर पूर्ण फकीरीजीक राँची के महर्षि मेँहीँ आश्रम चुटिया, राँची में गुजारने लगे।'
                                  '1989 ई0 में डेहरी ऑन सॉन में अखिल भारतीय सन्तमत सत्संग का वार्षिक महाधिवेशन था। राँची से मैं एक धर्मप्रेमी शिवाजी सिंह के साथ अधिवेशन में गया। में गये। वहाँ पूज्य स्वामी श्री संत सेवी जी महाराज ने आपसे कहा कि जब आप नौकरी छोड़ दिये है तो चलिये मेरे साथा जब मेरी यात्रा वायुधथान से होती है तो सब कुछ अंग्रेजी में होने के कारण मुझे असुविधा होती है। आप रहेंगे तो मुझे दिक्कत नहीं होगी। आप भी प्रसन्न होकर वहीं से उनकी सेवा में रह गये। अखिल भारतीय अधिवेशन समाप्त कर स्वामी संतसेवी जी महाराज के साथ आप कुप्पाघाट, भागलपुर आगये।'
                                  'कुय्याधार आश्रम में पूज्य सेव स्वामी संतसेवी जी महाराज के सेवा में तल्लीन हो गये। की सार्थी का नामांकन रजिस्टर मैं लिखना, विशिष्ट अतिथि को उनसे मुक्ताकात करवाना उनका प्रवचन लिखकर शान्ति सन्देश पत्रिका में प्रकाशित करवाना और पूर्व शान्ति सन्देश पत्रिका में प्रकाशित प्रवचन को एकत्रित कर पुस्तक का रूप देना उनका जीवनी लिखकर पुस्तक देवा आदि सेवा निष्ठा श्रद्धा और कुलचित गुफा में बैठकर ध्यान करना आदि किया करते थे। आपकी निष्ठा सच्ची लगन ध्यान में गहढी बैठ और 14 वर्षों तक दृष्टिसाधान का निष्ठापूर्वक अभ्यास को जानकर और आपकी योग्यता को आपकर 26 जनवरी 1990 ३० शुक्रवार को स्वामी संतसेव पूज्यपाद जी महाराज ने आपको नादानुसंधान (शब्द साधना) की क्रिया बता दी। अब आप सेवा से समय निकाल कर साधना-मार्ग में विशेष समय देने लगे। उस समय आपका निवास गुरुदेव महर्षि मेंही परमहंसजी महाराज'
                                  'के निवास के ऊपर छोटा सा कमरा मे था। एक रोज स्वामी श्री संतसेवी जी महाराज ने कहा सावन पूर्णिमा'
                                  'बहुत अच्छा होता है आपको सन्यास वस्त्र देंगे। भुनकर आपने कहा हुजुर अभी नहीं बाद में ले लेंगे। उन्होंने कहा नहीं आपको सन्यास वेष लेना पड़ेगा। उनकी आज्ञा को शिरोधार्य कर 13/8/1992 ३० सावन पूर्णिमा गुरुवार, को 10 बजकर 45 मिनट पर गुरु निवास कुप्पाघार में स्वामी श्री संतसेवी जी महाराज मे काषायवस्त्र प्रदान करू दिया।'
                                  '1993 में आप अपना निवास अलग निजि खर्च में कुप्पाघाट में ही बना लिये। पूज्य स्वामी संतसेवी जी महाराज के साथ आप देश के हर राज्य'
                                  'में घुमे और उनके मंच पर पदार्पण से पहले आध्यात्मिक प्रवचन भी देने लगे। आपके विद्वतापूर्ण और विषय के मुताविक पा संतवाणी समिश्रण प्रवचन सुन धर्मक्रमंत्रमुग्ध हो जाते हैं। धर्म प्रेमीगण आपकी प्रवचन की प्रशंसा करते अघाते नहीं है। वे आपके अवचन से प्रभावित होकर 12 अक्टूबर 1995 ३० पूज्य स्वामी रामानन्दजी महाराज सिमराहा सहरसा। मंच से दीक्षा देने का आदेश प्रदान किये और उस समय शान्ति. सन्देश पत्रिका के व्यवस्थापक श्रीबाबू सियाराम महतो को आदेश दिये को इस बात को आप प्रकाशित करू दिजिए। 1996 ई0 मुंगेर जिला घिवेशन बरियारपुर मुँकोर में हाल " रहा था। निवास शर्माजी के घर में था। दीक्षार्थी बहुत थे। पूज्य पाद स्वामी संतसेवी जी महाराज दीक्षार्थी को दीक्षा दिये और भोजन करने अपने निवासच ले। बहुत दीक्षार्थी समझ नहीं पाये और 10-15 सत्संग प्रेमी दीक्षा लेने पुन: जिला अध्यक्ष श्री बाबू चन्द्रिका प्रमाद सिंह पूज्य बाबाऐनिवेदन करने गये, हुजुर बहुत धर्म प्रेमी दीक्षा लेने 15 आये है। बतला दिया जाय। पूज्यपाद स्वामी संतसेवी जी महाराज ने भी चन्द्रिका बाबू से बोले योगानन्दजी को बुलाइये। चन्द्रिका बाबू मुझे बुलाकर बाबा के पास ले गया पूज्य स्वामी संतसेवी जी महाराज ने कूग- जाइये आज से आप दीक्षा दिजिए। मैं आपको दीक्षा देने का आदेश करता 1996 में ही मैं जानता था। भागलपुर दक्षिण जगदीशपुर से पूरब ग्राम सैनो श्री बाबू बलराम पोद्धार पोस्टमास्ट'
                                  'के यहाँ सत्संग करने। संयोगवश पूज्यपाद बाबा श्री शाही स्वामी महाराज का सत्सँग कागदीश पुर हाइस्कूट में चल रहा था। मैं अपने साथी श्री सुनिल झा (शिक्षक के साथ पूज्य बाबा शाही स्वामी जी महाराज को (मंदिर में उनका निवासथा) प्रणाम करने के लिए। पूज्य पाद बाबा एके पैड पर दीक्षा देने का आदेश लिखकर - दिये और बोले आपके प्रवचन से लोग प्रभावित नाद होते है और आपसे दीक्षा लेना चाहते हैं तो आप दीक्षा देने से इनकार कर देते है। में आपको परामर्श देता हूँ कि गुरुमहाराज गुरु बतलाते हुए अपने को रोवक मानते हुए दीक्षा देने का काम करें? मुझे अत्यन्त प्रसन्नता होगी (शाही स्वामी'
                                  '1996 ३0 में आपको कुप्पाघाट, माळानपुर मंग व्यवस्थापक बनाया गया। आपके भोजन व्यवस्था और आश्रम की देख-रेख से आश्रम की काफी विकाश होने लगी।'
                                  'संतमत सत्संग में योगदान - 198580 सहरसा जिला सन्तमत समिति का + गठन कॉप में हुआ था। उसमें आपको जिला समितिका सदस्य 1154) मनोनित किया गया। 1984, 1985, 1986, 1987 तक आप नवहट्टा प्रखण्ड समिति के अध्यक्ष बने रहे और जिला समिति के एक सदस्य भी। 1988 30 में श्री यमुना प्र० वर्मा को मोहडा प्रखण्ड समिति का आपने अध्यक्ष किया। और आप जिला समिति के सहायक मंत्री बनाये गये। 199030 में 18. सर्वसम्मति से आपको सहरसा जिना सन्तमत कात्संग समिति का अध्यक्ष चुन लिये गये जो लगातार अभी तक है। महासभा'
                                  'सन 1993 50 अखिल भारतीय सन्तमत सत्संग के मंत्री आपको चुने किये गये। विचार'
                                  '2000 ई0 में कोशी प्रमण्डनीय सन्तमत सत्संग का प्रथमवार्षिक महायोगाश्रम वैजनाथ में अधिवेशन प्रारम हुआ। पूज्यपाद बाबीही स्वामी जी महाराज ने आपको अध्यक्ष नियुक्त किया। जिसका नार के 11 निवेदन आप अभीतक कर रहे हैं। -11 / आपके परामर्श मानकर कठिन से कठिन जगह पर जिला'
                                  'चमत्कार -'
                                  'संतमत सत्संग में चमत्कार का कोई महत्व नहीं?'
                                  'चमत्कार अनायास होता है। आपके द्वारा अनेको लोग सनाथ सौर प्रकृत हुए है। हजारों विद्यार्थी आपके आर्शिवाद से सरकारी सेवा तो हजोरो माईकी सुनी गोद में जलना खेलाडीह कर रहे हैं। हमारे हजारो भाई लड़की डी लड़की से परेशान थे जो आपके आर्शीवाद से लड़का पाकर अपने को निहाल मानते है। कुछ प्रसंग में स्वामी जी का वर्णन करता है'
                                  'हरियाणा निवासी हरिवंश गौतम बित हो गये थे। अनेको उपब्बार बालू की शादी किये तीस वर्ष 1 के बावजूद मध्ये एक भी संतान नहीं दोनो सम्पत्ति हुई। आपका दर्शन उनको दिल्ली में हुआ। उन्होंने अपनी हृदय की व्यथा का आपको निराश हताश परेशान थे। उनकी व्यथा देख आपक्याद्र सुनाया। 1 हो गये और उनको कुछ बतलाये। आपके आर्शीवाद से उनको तीस वर्ष वाद लड़का हो गया। खुशी से आपके चरणों मे Bolero कार चढ़ाघा'
                                  'स्वामीनारायण बाबा परसवन्नी सहरसा के दो पुत्रों की शादी हुई थी। दोनो निःसन्तान थे। वर्षों बीत गयी थी। आपके आर्शीवाद दोनो पुत्रों को पुत्र रत्न की प्राप्ती हुई। श्री बाबू अक्षय जाल मेहता रघुनाथपुर, जदिया को बाहरी है, आठ पुत्री थी। बेटा के इन्तजार में दोनो दम्पति व्याकुल थे। आपके आर्शीवाद से उनको सुसंस्कारी पुत्र हुआ। श्रीबाबू विद्यानन्द भगत चौदनी खगड़िया को दो पुत्र है। दोनों को पुत्र नहीं था। आपके आर्शीवाद से दोनो को पुत्र होगया। 1. भागलपुत्र जिलान्तर्गत पीरपैंती बाजार के बगल में बघवा गाँव है। जहाँ एक धर्मात्मा श्री बाबू परशुरामास्व है। उनको एकठी पुत्र हो उनकी शादी धुमधाम से किये वर्षो बीत गयी। संतान की प्राप्ति नहीं हुई। आपसे निवेदन करने लगे बाबा पूरा परिवार दीक्षित हूँ। नित्य स्तुति-प्रार्थना करता हूँ फिर भी घर बिरान है। आपको क्या उमर गयी। आपने कहा गुरु महाराज से सब प्रार्थना किलिस संयोग उसी अवसर प्रार्थना'
                                  'आशीर्वाद गुरुदेव सुन्य दो पोत्रों को खेला रहे है। नावादा जिला निवासी धीबाबू सुरेन्द्र सिंह ( B.D. 0) को एक पुत्र है। वर्षों बीत गयी। खुदाया दोनो दम्पति को बुदापा दस्तक देने लगा। चिन्ता से शरीर सुख गया। पौत्रका तमुख नहीं देख पाये। एक दिन आपके चरण में आकर'
                                  'दोनों दम्पति रोने लगे। बाबा आँगन बिल्कुल सुना-चुना लगता है। आपने हँसकर कहा लक्ष्मी को भेजनताई। उसी वर्ष उनको पौत्री हो गया।'
                                  'कहलगाँव निवासी खच्च श्रीबाबू राजेन्द्र सिंह जी। पूज्यपाद गुरुदेव के अनन्य भक्त है। अपनी बड़ी पुत्री की शादी एक इन्जिनियर से किये। वर्षों बीत गयी। सुन्तान'
                                  'की प्राप्ति नहीं हुई। मेडिकल टेस्ट में पता चला कि लड़के से सन्तान नहीं होगी। आपके समझ रोने लगे। आपने कुछ उपचार बतला दिया। उनको पुत्र हो गया। डाक्टर कहने लगे बाबा आप तो पत्थर पर घास उगा दिये। मेडिकल साइन्स फेल कर गया / हसनपुर निवासी श्री सोहन बाबू कर्ज में डुवे हुन लाखों कर्ज था। आपसे निवेदन किये। आपने कहा सोना-चाँदी का दुकान करो। आप स्वयं दुकान का उद्घाटनकर दिये। आपके आर्शीवाद से दो वर्ष के अन्दर पाँच "लाख का कर्ज चुकता कर दिये और आज करोड़ो के मानिक बने हैं।'
                                  'अररिया कदमाहा में आपने एक मधुवा को दीक्षा दिया। बार-बार आपसे कहता। बाबा कहाँ कुछ होता है। आपने उसके सिद्ध रैखा उसको अन्तर का पटवून गया। खुशी से नाचने लगा। सच्चा सौदा मुझे मिल गया।'
                                  'भरगामार अररिया) की घटना है एक भूमिदेव अपने पुत्र के साथ ट्रेन से लुधियाना जा रहे थे रास्ते उसका पुत्र सो गया। उसके पिता ट्रेन से उतरकर पुत्र का इन्तजार करने लगे। गाड़ी खुल गयी। अर्पिता उदास होकर घर लोट गया। पाँच वर्ष बीत गया। लड़का का पता नहीं चना • उधर घटना घटती है। उगाड़ी जो खुली तो अगले स्टेशन पर मजिस्ट्रेट चेकिंग हो गया। लड़का के पास टिकट नहीं था। अत: उसे जेल में डाल दिया। संयोग स्वामी योगमन "जी मगराज भरगामा सत्संग करने पधारे थे। वे श्रृषिदेव होने नये बाबा के चरण पकड़कर रोने लगे। बाबा दया करके बतावे कि लड़का जिन्दा है की नहीं। बाबा लड़का जिन्दा है और दो रोज में घर आजाएगा। ठीक को रोज मे ही एक सिपाही लड़का को लेकर घर पहुँचा दिया। तब सिपाही कहने लगे कि कोई'
                                  'महात्मा जेन मजिस्ट्रेट को बार-बार कहने लगे मेरे बच्चे को घर पहुँचा दो। तब साहब जमानात कराके मुझे कहा जाओ इसे घर पहुँचा दो। सारा खर्च साहव दिये है।'
                                  'पूज्य बाबा का आशीवचन आपको'
                                  'पूज्य रामानन्द बाबा 199880 में लिखकर दिया कि आप हमारे उतराधिकारी बनेंगे। आपकी आन्तरिक योग्ता और संतमत के प्रति समर्पण'
                                  'को देखकर पूज्यपाद बाबा महर्षि शाही स्वामी जी महाराज मुजफ्फरपुर जिना सन्तमत सत्संग का वार्षिक अधिवेशन निनाउच्चविद्यालय भुजफ्फरपुर में उजून 2006 ई0 को प्रारम्भ था। संस्था अपरान्हकाल के सत्संग में जाने के समय पूज्य बाबा महर्षि शाही स्वामी जो प्रणाम करने गये। ज्योंहि आपने प्रणाम किया। बाबा ने कहा खाइये सन्तमत को आप चलाइएगा | आप हाथ जोर लिये हे सुनिये ! (अपने देह की तरफ ईशारा करते हुए) इस गुदड़ी को अधिक दिन तक नहीं ढोना है। इसलिए इस संतमत - संस्था को आप चलाइएगा। आप हाथ जोरकर निवेदन 1. करने लगे, हुजुर अभी यह सब नहीं कहा जाय। बाबा गंभीर होकर बोले- क्या शाही, संतसेवी अमर है। उस समय स्वामी चतुरानन्द जी महाराज, स्वामी ओमानन्द कि जी महाराज, श्री चतुर्भुज प्र० सिन्हा (इन्जिनियर साहब) रामबालक सिंह मुंगेर आदि भी खड़े थे और सुने थे।'
                                  '10 नवम्बर 2009 ई० विहार प्रांतीय अधिवेशन परवना (भागलपुर) में चल रहा था। सुबह सत्संग प्रथम पानी के समाप्ति के बाद पूज्यपाद बाबा महर्षि शाही स्वामी 5. जी महाराज सन्तमत सत्संग मन्दिर परवत्ता में दिन विराजमान थे। बहुत सारे धर्म प्रेमी पूज्य बाबा का दर्शन. स्पर्शसन का लाभ मे रहे थे। आप भी गये प्रणाम करने, ज्योहिं आप बाबा के चरण पर मुके बाबा अपने गला से रुद्राक्ष की माला निकालकर आपके गला में पहना दिए - और बोले लिजिए इसी कान झगड़ा होता है। सभी धर्म प्रेमी खुशी से गुरु महाराज की जयकारा'
                                  'लगाने लगे। पुण्यप पूज्यपाद बाबा शाही स्वामी जी महाराज का बहुत भापसे स्नेह था। जब कभी किसी कारण वस् बाबा से अलग होते थे और लोटकर पुन: उनके चरण में आते थे। तो बाबा बोलते थे कि आप नहीं रहते हैं तो उदास मालूम पड़ता है।'
                                  'दीक्षा आपके द्वारा 2020 मार्चता लगभग पच्चीस हजार धर्म प्रेमी दीक्षा लेकर अपने जीवन कोसनाथ एवं धन्य बनाये 13'
                                  'आप जैसे सुयोग्य गुरु से दीक्षा, सन्यास वस्त्र, नादानुसंधान कि क्रिया लेकर लोग अपने को गौरवान्वित महसुस करते है। स्वामी विवेकानन्द अमेरिका शिकागो शहर में होने वाले विश्वधर्म सम्मेलन में भाग लेकर शिकागो के सड़क से 1 रहे थे। उनकी भेष-भूमा को देखकर एक गुजर - लड़की से उपहास करती हुई कहती है ये विचित्र आदमी। ये कैसी निवास हूँ कहाँ से आये है। स्वामी जी मधुर स्वर में बोले बहन जी मेरे इस कपड़े को देखकर आश्चर्य मत करो। तुम्हारे देश में सज्जनता 10 और भद्रता की कसोटी कपड़े है। जिन्हें दर्जी सीते 3. है। परन्तु जिस देश में मैं आया हूँ वहाँ मनुष्य கி पहचान कपड़ों को नहीं, उनके चरित्र से की जाती है। धन बन जनबल बुद्धि अपार'
                                  'सदाचार विन सब बेकार उसी सदाचार के धनी स्वामी जी 0 15.01 को पाकर धर्म प्रेमी खुशहाल हो रहे है। . कुप्पाघाट आश्रम से'
                                  '12 1998 ई0 के जुलाई माह में स्वामी जी कुप्पाघाट आश्रम उत को छोड़कर आश्रम बनाने के चक्कर में देश मे बहुत भ्रमण किये। कहीं अनुकूल जगह नहीं मिला। 1082 6 अन्त में निराश होकर गाँधी पथ सहरसा मन्दिर मे आकर ठहर गये। एक बोज सक मासंग प्रेमी ने कहाास्वामीजी जैसा जगह आप खोज रहे है। वैसा जगह आपको ब 15 बैजनाथपुर में मिल जायगा। स्वामी जी उस सालेग 74/5 1 1. प्रेमी को साथ लेकर बैजनाथपुर आये। बिल्कुल अनुकुल'
                                  'जगह देख स्वामी जी प्रफुल्लित हो गये। जहाँ से देश के किसी भाग में जाने के लिए ट्रेन बस आदि की सवारी हमेशा उपलब्ध रहता है। सहरसा जक्सन या बस स्टेण्ड'
                                  'से हर पाँच मिनट पर गाड़ी बैजनाथपुर कंआती है। स्वामीजी एक विद्या दो कट्ठा जमीन खरीदे और दो कट्ठा'
                                  'जमीन धर्म प्रेमी श्री बाबू महेन्द्र चौधरी बैजनाथपुर निवासी दान में दिये किसी कारण वस उस स्थान को छोड़कर बैजनाथपुर में ही'
                                  'पेपर मिल के पूरब मनोहर उच्च विद्यालय के बगल में स्वनाम धन्य श्री बाबू कपिलेश्वर यादव पूर्व सरपंच सर्व परिवार सम्मति से एक विद्या बारह कट्ठा जमीन'
                                  'दान में आपको दिये। जिसमें भव्य सत्संग प्रशान एवं अनेकों कोठरियाँ बनकर तैयार है। आश्रम का भव्य गेट संतमत के किसी आश्रम में गरिमा को बढ़ा रहे हैं। 1 की गयी। इस बार 3/05/2020 को बर्तमान मुखिया पंकज कुमारी की अध्यक्षता में एक आम बैठक आहुत जिसमें सर्वसम्मति से निर्णय लिया गया कि आ. मनोहर उच्च विद्यालय के बगल से जो वाई पासरोड गुजरती है उसका नाम महर्षि मेँहीँ पथ रखा जाय । सभीकी महर्षि मेँहीँ पथ के दोनों तरफ (आदि-अन्त) में महर्षि मेँहीँ तोरण द्वार बनाया जाय । सनोहर उच्चविद्यालय के मुख्य रोड NH चारो तरफ वास्ता गया है। उस चौक का नाम स्वामी योगानन्द चौक रखा जाय प्रत्येक बर्ष 26 जनवरी से 3 फरवरी तक जहाँ'
                                  'ध्यानाभ्यास एव सत्संग का भव्य आयोजन किया। उपस्थित सभी धर्मप्रमियों ने दोनों हाथ उठाकर गुरूमहाराज की जयध्वनि करते हुए सभी प्रस्ताव'
                                  'को पारित कर दिया पूर्व विधायक श्रीबाबू किशोर कुमार जी भी अपनी हर्षातिरेक व्यक्त करते हुए अपनी रजिस्टर में व्यक्त किया। अनुसशा'
                                  'वर्तमान में स्वामी योगानन्द जी महाराज इसी आश्रम से देश-विदेश सहमंग प्रचारार्थ जाते हैं।',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "स्वामी योगनन्द जी महाराज के नाम में महर्षि एवं परमहंस संज्ञा कब और कैसे लगा ?",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15,
                                ),
                                child: ReadMoreText(
                                  'अखिल राष्ट्रीय संतमत सत्संग के 110 वां वार्षिक महाधिवेशन ग्राम कचरा (कंचनपुर) सहरसा में आए हुए काशी (वाराणसी) कैलाश मठ के महामंडलेश्वर स्वामी आशुतोषानन्द गिरी जी महाराज जो अनेकों बार शास्त्रार्थ प्रतियोगिता में स्वर्ण पदक से सम्मानित हुए और एक बार भारत में प्रथम स्थान प्राप्त किए। वर्तमान में राज्य मंत्री भी हैं। 13 मार्च 2022 दिन रविवार द्वितीय पाली सत्संग में स्वामी जी के नाम में महर्षि एवं परमहंस के उपाधि से संबोधन किया, जिसे स्वामी योगानंद जी ने विरोध किया और कहा कि यह संबोधन न लगाया जाए। तब सत्संग में आये लाखों श्रद्धालुओं से स्वामी अशुतोषानन्द गिरि जी महाराज ने समर्थन मांगी। सत्संग में आए हुए लाखों श्रद्धालुओं ने दोनों हाथ उठाते हुए गुरु महाराज के जयकारे लगाते हुए समर्थन दिया। इस पावन घड़ी में बिहार राज्य के माननीय उपमुख्यमंत्री, कला संस्कृति मंत्री तथा क्षेत्रीय विधायक भी उपस्थित थे और अखिल राष्ट्रीय संतमत सत्संग महासभा के अध्यक्ष, महामंत्री तथा महासभा के सभी सदस्य उपस्थित थे।',
                                  textAlign: TextAlign.justify,
                                  trimLines: 2,
                                  colorClickableText: Colors.blue,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'और पढ़ें',
                                  trimExpandedText: 'Show less',
                                  style: TextStyle(
                                    color: txtcol,
                                    fontSize: 17,
                                  ),
                                  moreStyle: const TextStyle(
                                      fontSize: 17,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //  others
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: ListView.builder(
                            itemCount: santmatMonks.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    //set border radius more than 50% of height and width to make circle
                                  ),
                                  color: cardColor.withBlue(1000),
                                  shadowColor: Colors.black87,
                                  elevation: 5,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        // color: const Color.fromRGBO(
                                        //     245, 144, 158, 1.0),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                            ),
                                            color: Color.fromRGBO(
                                                245, 144, 158, 1.0)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${santmatMonks[index]['नाम']}",
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepPurple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.purple),
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                    'https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/default.png',
                                                  ))),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        color: Colors.white60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "जन्मतिथि  : ${santmatMonks[index]['जन्मतिथि']}",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "दीक्षा तिथि  :  ${santmatMonks[index]['दीक्षा तिथि']}",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "दीक्षा गुरु: ${santmatMonks[index]['दीक्षा गुरु']}",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "परिनिर्वाण दिवस  : ${santmatMonks[index]['परिनिर्वाण दिवस']}",
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white24,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 28.0),
                          child: Text(
                            "कुल संख्या : ${santmatMonks.length + 7}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // ]
    //   ),
    // );
  }
}
