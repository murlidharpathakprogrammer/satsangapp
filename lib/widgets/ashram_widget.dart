// import 'dart:io';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:satsangapp/lists/ashramRules.dart';
import 'package:satsangapp/lists/residingMonks.dart';
import 'package:satsangapp/widgets/text_widget.dart';
// import 'package:satsangapp/screens/yt_screen.dart';
// import 'package:satsangapp/widgets/text_widget.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../lists/mahotsava.dart';
import '../provider/dark_theme_provider.dart';
import '../screens/gallery_screen.dart';
import '../screens/yt_screen.dart';

class AshramWidget extends StatelessWidget {
  AshramWidget({Key? key}) : super(key: key);
  String vidSrc = 'https://www.youtube.com/watch?v=BnQK0ue-tYk';

  List<String> imgsLst = [
    "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/ashramPhoto/1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    final Color txtcol =
        themeState.getDarkTheme ? Colors.white70 : Colors.black;
    // final Color titleColor =
    // themeState.getDarkTheme ? Colors.orange : Colors.black;
    // final Color cardColor =
    //     themeState.getDarkTheme ? Colors.white10 : Colors.orange.shade100;

    return Scaffold(
      appBar: AppBar(
        title: const Text("योगाश्रम"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Column(
                  children: [
                    FancyShimmerImage(
                      width: double.infinity,
                      imageUrl:
                          "https://res.cloudinary.com/de9omilub/image/upload/v1673012232/satsangapp/images/ashram/My_project-1_22_bx1rkm.png",
                      boxFit: BoxFit.cover,
                    ),
                    const Text(
                      "महर्षि मेँहीँ योगाश्रम मुख्य द्वार",
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 3, color: Colors.white24)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ReadMoreText(
                      'महर्षि मेंही योग आश्रम बैजनाथपुर सहरसा का स्थापना 2000 ईस्वी में आचार्य महर्षि योगानंद परमहंस जी महाराज के द्वारा संतमत के प्रचार प्रसार के लिए किया गया। जिसका भूमि दान '
                      'श्री बाबू कपिलेश्वर यादव पूर्व सरपंच सर्व परिवार सम्मति से एक विद्या बारह कट्ठा जमीन दान में आपको दिये। जिसमें भव्य सत्संग प्रशान एवं अनेकों कोठरियाँ बनकर तैयार है। आश्रम का भव्य गेट संतमत के किसी आश्रम में गरिमा को बढ़ा रहे हैं। 1 की गयी। इस बार 3/05/2020 को बर्तमान मुखिया पंकज कुमारी की अध्यक्षता में एक आम बैठक आहुत जिसमें सर्वसम्मति से निर्णय लिया गया कि आ. मनोहर उच्च विद्यालय के बगल से जो वाई पासरोड गुजरती है उसका नाम महर्षि मेँहीँ पथ रखा जाय । सभीकी महर्षि मेँहीँ पथ के दोनों तरफ (आदि-अन्त) में महर्षि मेँहीँ तोरण द्वार बनाया जाय । सनोहर उच्चविद्यालय के मुख्य रोड NH चारो तरफ वास्ता गया है। उस चौक का नाम स्वामी योगानन्द चौक रखा जाय प्रत्येक बर्ष 26 जनवरी से 3 फरवरी तक जहाँ ध्यानाभ्यास एव सत्संग का भव्य आयोजन किया। उपस्थित सभी धर्मप्रमियों ने दोनों हाथ उठाकर गुरूमहाराज की जयध्वनि करते हुए सभी प्रस्ताव को पारित कर दिया पूर्व विधायक श्रीबाबू किशोर कुमार जी भी अपनी हर्षातिरेक व्यक्त करते हुए अपनी रजिस्टर में व्यक्त किया। अनुसशा वर्तमान में स्वामी योगानन्द जी महाराज इसी आश्रम से देश-विदेश सहमंग प्रचारार्थ जाते हैं',
                      textAlign: TextAlign.justify,
                      trimLines: 3,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'और पढ़ें',
                      trimExpandedText: 'Show less',
                      style: TextStyle(
                        color: txtcol,
                        fontSize: 20,
                      ),
                      moreStyle: const TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue)),
                ),
              ),
            ),

            //  आश्रम का फोटो विडियो
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 3, color: Colors.white24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Title(
                          color: Colors.white,
                          child: const Text(
                            "आश्रम का फोटो विडियो",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: w * 1.4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            // physics: const BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            children: List.generate(
                              6,
                              (index) {
                                String thisImgUrlQual10 =
                                    "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/ashramPhoto/tr:q-1/${index + 1}.jpg";
                                String thisImgUrl =
                                    "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/ashramPhoto/${index + 1}.jpg";
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FullScreenImagePage(
                                          imageUrl: thisImgUrl,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: FancyShimmerImage(
                                        height: 200,
                                        imageUrl: thisImgUrlQual10,
                                        boxFit: BoxFit.cover,
                                        shimmerHighlightColor: Colors.orange,
                                        shimmerBaseColor: Colors.white,
                                        shimmerDuration:
                                            const Duration(milliseconds: 1000),
                                        errorWidget: const Icon(Icons
                                            .photo_size_select_actual_outlined),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )),
                    const Divider(
                      thickness: 3,
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "विडियो",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                    // FancyShimmerImage(imageUrl: "01g7LWEChUc")
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: InkWell(
                        onTap: () {
                          String vidSrc = "Hatxu2zeZes";
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyYouTubePlayer(v: vidSrc)));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  color: Colors.purple),
                              width: double.infinity,
                              // color: Colors.purple,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextWidget(
                                    isTitle: true,
                                    text:
                                        "संत सद्गुरु महर्षि मेँहीँ परमहंस जी महाराज समाधि स्थल कुप्पाघाट",
                                    color: Colors.white,
                                    textSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: w * 0.45,
                              child: FancyShimmerImage(
                                imageUrl:
                                    'https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/ashramPhoto/ytVidThumb/tr:e-contrast/1.jpg',
                                boxFit: BoxFit.cover,
                                shimmerDuration:
                                    const Duration(milliseconds: 500),
                                shimmerBaseColor: Colors.amberAccent,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.blueAccent),
                              width: double.infinity,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextWidget(
                                    isTitle: true,
                                    text: "देखें",
                                    color: Colors.white,
                                    textSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, left: 10, right: 10, bottom: 10),
                      child: InkWell(
                        onTap: () {
                          String vidSrc = "01g7LWEChUc";
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyYouTubePlayer(v: vidSrc)));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  color: Colors.purple),
                              width: double.infinity,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextWidget(
                                    isTitle: true,
                                    text: "महर्षि मेँहीँ आश्रम कुप्पाघाट पार्क",
                                    color: Colors.white,
                                    textSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: w * 0.45,
                              width: double.infinity,
                              child: FancyShimmerImage(
                                imageUrl:
                                    'https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/ashramPhoto/ytVidThumb/tr:e-contrast/2.jpg',
                                boxFit: BoxFit.cover,
                                shimmerDuration:
                                    const Duration(milliseconds: 500),
                                shimmerBaseColor: Colors.amberAccent,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.blueAccent),
                              width: double.infinity,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextWidget(
                                    isTitle: true,
                                    text: "देखें",
                                    color: Colors.white,
                                    textSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // आश्रम में निवास कर रहे संत
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 3, color: Colors.white24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Title(
                          color: Colors.white,
                          child: const Text(
                            "आश्रम में निवास कर रहे संत",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 800,child: ResidingMonkWidget(),)
                  ],
                ),
              ),
            ),

            // Ashram Rules and Regulations
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 3, color: Colors.white24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Title(
                          color: Colors.white,
                          child: const Text(
                            "आश्रम नियमावली",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 1250, child: AshramRulesWidget())
                  ],
                ),
              ),
            ),

            // Annual Celebrations
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 3, color: Colors.white24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Title(
                          color: Colors.white,
                          child: const Text(
                            "वार्षिक महोत्सव",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 300, child: MahotsavaWidgetList())
                  ],
                ),
              ),
            ),

            // स्तुति एवं आरती
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 3, color: Colors.white24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        // color: Colors.white.withOpacity(0.4),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Title(
                          color: Colors.white,
                          child: const Text(
                            "स्तुति एवं आरती",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "प्रातः सांयकालीन सन्त-स्तुति",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "सब सन्तन्ह की बडि़ बलिहारी। \nउनकी स्तुति केहि विधि कीजै, \nमोरी मति अति नीच अनाड़ी।।सब.।।1।। \nदुख-भंजन भव-फंदन-गंजन, \nज्ञान-घ्यान निधि जग-उपकारी। \nविन्दु-ध्यान-विधि नाद-ध्यान-विधि \nसरल-सरल जग में परचारी।।सब.।।2।। \nधनि- ऋषि-सन्तन्ह धन्य बुद्ध जी, \nशंकर रामानन्द धन्य अघारी। \nधन्य हैं साहब सन्त कबीर जी \nधनि नानक गुरू महिमा भारी ।। सब.।।3।। \nगोस्वामी श्री तुलसि दास जी, \nतुलसी साहब अति उपकारी। \nदादू सुन्दर सुर श्वपच रवि \nजगजीवन पलटू भयहारी।। सब.।।4।। \nसतगुरु देवी अरू जे भये, हैं, \nहोंगे सब चरणन शिर धारी। \nभजत है ‘मेँहीँ ’ धन्य-धन्य कहि \nगही सन्त पद आशा सारी।। सब.।।5।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "अपराह्न एवं सायंकालीन विनती",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "प्रेम-भक्ति गुरु दीजिये, विनवौं कर जोरी।\n पल-पल छोह न छोडि़ये, सुनिये गुरु मोरी ।।1।।\n युग-युगान चहुँ खानि में, भ्रमि-भ्रमि दुख भूरी।\n पाएउँ पुनि अजहूँ नहीं, रहूँ इन्हतें दूरी ।।2।।\n पल-पल मन माया रमे, कभुँ विलग न होता।\n भक्ति-भेद बिसरा रहे, दुख सहि-सहि रोता। ।।3।।\n गुरु दयाल दया करी, दिये भेद बताई।\n महा अभागी जीव के, दिये भाग जगाई ।।4।।\n पर निज बल कछु नाहिं है, जेहि बने कमाई ।\n सो बल तबहीं पावऊँ, गुरु होयँ सहाई ।।5।।\n दृष्टि टिकै सु्रति धुन रमै, अस करु गुरु दाया।\n भजन में मन ऐसो रमै, जस रम सो माया ।।6।।\n जोत जगे धुनि सुनि पड़ै, सु्रति चढै़ आकाशा।\n सार धुन्न में लीन होई, लहे निज घर वासा ।।7।।\n निजपन की जत कल्पना, सब जाय मिटाई।\n मनसा वाचा कर्मणा, रहे तुम में समाई ।।8।।\n आस त्रास जग के सबै, सब वैर न नेहू।\n सकल भुलै एके रहे, गुरु तुम पद स्नेहू ।।9।।\n काम क्रोध मद लोभ के, नहिं वेग सतावै।\n सब प्यारा परिवार अरू, सम्पति नहिं भावै ।।10।।\n गुरु ऐसी करिये दया, अति होइ सहाई।\n चरण शरण होइ कहत हौं, लीजै अपनाई। ।।11।।\n तुम्हरे जोत-स्वरूप अरु, तुम्हरे धुन-रूपा।\n परखत रहूँ निशि दिन गुरु, करु दया अनूपा ।।12।।\n",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ))
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),
                    //  Aarti
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "आरती",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "आरती संग सतगुरु के कीजै।\n अन्तर जोत होत लख लीजै ।।1।।\n पाँच तत्व तन अग्नि जराई।\n दीपक चास प्रकाश करीजै ।।2।।\n गगन-थाल रवि-शशि फल-फूला।\n मूल कपूर कलश धर दीजै ।।3।।\n अच्छत नभ तारे मुक्ताहल।\n पोहप-माल हिय हार गुहीजै ।।4।।\n सेत पान मिष्टान्न मिठाई।\n चन्दन धूप दीप सब चीजैं ।।5।।\n झलक झाँझ मन मीन मँजीरा।\n मधुर-मधुर धुनि मृदंग सुनीजै ।।6।।\n सर्व सुगन्ध उडि़ चली अकाशा।\n मधुकर कमल केलि धुनि धीजै ।।7।।\n निर्मल जोत जरत घट माँहीं।\n देखत दृष्टि दोष सब छीजै ।।8।।\n अधर-धार अमृत बहि आवै।\n सतमत-द्वार अमर रस भीजै ।।9।।\n पी-पी होय सुरत मतवाली।\n चढि़-चढि़ उमगि अमीरस रीझै ।।10।।\n कोट भान छवि तेज उजाली।\n अलख पार लखि लाग लगीजै ।।11।।\n छिन-छिन सुरत अधर पर राखै।\n गुरु-परसाद अगम रस पीजै ।।12।।\n दमकत कड़क-कड़क गुरु-धामा।\n उलटि अलल ‘तुलसी’ तन तीजै । ।13।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "पूज्यपाद महर्षि मे मेँहीँ परमहंसजी महाराज द्वारा रचित आरती जो उपरिलिखित आरती आरती के बाद गायी जाती है ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "आरति तन मन्दिर में कीजै।\n दृष्टि युगल कर सन्मुख दीजै ।।1।।\n चमके विन्दु सूक्ष्म अति उज्जवल।\n ब्रह्मजोति अनुपम लख लीजै ।।2।।\n जगमग जगमग रूप ब्रह्मण्डा।\n निरखि निरखि जोती तज दीजै ।।3।।\n शब्द सुरत अभ्यास सरलतर।\n करि करि सार शबद गहि लीजै ।।4।।\n ऐसी जुगति काया गढ़ त्यागि।\n भव-भ्रम-भेद सकल मल छीजै ।।5।।\n भव-खण्डन आरति यह निर्मल।\n करि ‘मेँहीँ’ अमृत रस पीजै ।।6।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "ईश-स्तुति (प्रातः कालीन)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "सब क्षेत्र क्षर अपरा परा पर औरू अक्षर पार में।\n निर्गुण के पार में सत् असत् हू के पार में ।।1।।\n सब नाम रूप के पार में मन बुद्धि वच के पार में।\n गो गुण विषय पँच पार में गति भाँति के हू पार में।।2।।\n सूरत निरत के पार में सब द्वन्द्व द्वैतन्ह पार में।\n आहत अनाहत पार में सारे प्रप´चन्ह पार में।।3।।\n सापेक्षता के पार में त्रिपुटी कुटी के पार में।\n सब कर्म काल के पार में सारे ज्जालन्ह पार में।।4।।\n अद्वय अनामय अमल अति आधेयता-गुण पार में।\n सत्ता स्वरूप अपार सर्वाधार मैं-तू पार मे।।5।।\n पुनि ओऊम् सोहम् पार में अरू सच्चिदानन्द पार में।\n हैं अनन्त व्यापक व्याप्य जो पुनि व्याप्य व्यापक पार में।।6।।\n हैं हिरण्यगर्भहु खर्व जासों जो हैं सान्तन्ह पार में।\n सर्वेश हैं अखिलेश हैं विश्वेश हैं सब पार में।।7।।\n सत्शब्द धर कर चल मिलन आवरण सारे पार में।\n सद्गुरु करूण कर तर ठहर धर ‘मेँहीँ’ जावे पार में।।8।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),
                    //  प्रातः सांयकालीन सन्त-स्तुति
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "प्रातः सांयकालीन सन्त-स्तुति",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "सब सन्तन्ह की बडि़ बलिहारी।\n उनकी स्तुति केहि विधि कीजै,\n मोरी मति अति नीच अनाड़ी।।सब.।।1।।\n दुख-भंजन भव-फंदन-गंजन,\n ज्ञान-घ्यान निधि जग-उपकारी।\n विन्दु-ध्यान-विधि नाद-ध्यान-विधि\n सरल-सरल जग में परचारी।।सब.।।2।।\n धनि- ऋषि-सन्तन्ह धन्य बुद्ध जी,\n शंकर रामानन्द धन्य अघारी।\n धन्य हैं साहब सन्त कबीर जी\n धनि नानक गुरू महिमा भारी ।। सब.।।3।।\n गोस्वामी श्री तुलसि दास जी,\n तुलसी साहब अति उपकारी।\n दादू सुन्दर सुर श्वपच रवि\n जगजीवन पलटू भयहारी।। सब.।।4।।\n सतगुरु देवी अरू जे भये, हैं,\n होंगे सब चरणन शिर धारी।\n भजत है ‘मेँहीँ’ धन्य-धन्य कहि\n गही सन्त पद आशा सारी।। सब.।।5।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),
                    //  प्रातःकालीन गुरु-स्तुति
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "प्रातःकालीन गुरु-स्तुति",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "‘‘दोहा’’\n मंगल मूरति सतगुरु, मिलवैं सर्वाधार।\n मंगलमय मंगल करण, विनवौं बारम्बार।।1।।\n ज्ञान-उदधि अरू ज्ञान-घन, सतगुरु शंकर रूप\n नमो-नमो बहु बार हीं, सकल सुपूज्यन भूप।।2।।\n सकल भूल-नाशक प्रभू, सतगुरु परम कृपाल।\n नमो कंज-पद युग पकडि, सुनु प्रभुं नजर निहाल।।3।।\n दया दृष्टि करि नाशिये, मेरो भूल अरू चूक।\n खरो तीक्ष्ण बुधि मोरि ना,पाणि जोडि़ कहुँ कूक।।4।।\n नमो गुरु सतगुरु नमो, नमो नमो गुरुदेव।\n नमो विघ्न हरता गुरु, निर्मल जाको भेव।।5।।\n ब्रह्मरूप सतगुरु नमो, प्रभु सर्वेश्वर रूप।\n राम दिवाकर रूप गुरु, नाशक भ्रम-तम-कूप।।6।।\n नमो सुसाहब सतगुरु, विघ्न विनाशक द्याल।\n सुबुधि विगासक ज्ञान-प्रद, नाशक भ्रम-तम-जाल।।7।।\n नमो-नमो सतगुरु नमो, जा सम कोउ न आन\n परम पुरूषहू तें अधिक, गावें सन्त सुजान।।8।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),
                    //  छप्पय
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "छप्पय",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "जय जय परम प्रचण्ड, तेज तम-मोह-विनाशन।\n जय जय तारण तरण, करन जन शुद्ध बुद्ध सन।।\n जय जय बोध महान, आन कोउ सरवर नाहीं।\n सुर नर लोकन माहिं, परम कीरति सब ठाहीं।।\n सतगुरु परम उदार हैं, सकल जयति जय-जय करें।\n तम अज्ञान महान् अरू, भूल-चूक-भ्रम मम हरें।।1।।\n जय जय ज्ञान अखण्ड, सूर्य भव-तिमिर-विनाशन।\n जय-जय-जय सुख रूप, सकल भव-त्रास-हरासन।।\n जय-जय संसृति-रोग-सोग, को वैद्य श्रेष्ठतर ।\n जय-जय परम कृपाल, सकल अज्ञान चूक हर।।\n जय-जय सतगुरु परम गुरु, अमित-अमित परणाम मैं।\n नित्य करूँ, सुमिरत रहूँ, प्रेम-सहित गुरु नाम मैं।।2।।\n जयति भक्ति-भण्डार, ध्यान अरू ज्ञान-निकेतन।\n योग बतावनिहार, सरल जय-जय अति चेतन।।\n करनहार बुधि तीव्र, जयति जय-जय गुरु पूरे।\n जय-जय गुरु महाराज, उक्ति-दाता अति रूरे।।\n जयति-जयति श्री सतगुरु, जोडि पाणि युग पद धरौं।\n चूक से रक्षा कीजिये, बार-बार विनती करौं।।3।।\n भक्ति योग अरू ध्यान को, भेद बतावनिहारे।\n श्रवण मनननिदिध्यास, सकल दरसावनिहारे।\n सतसंगति अरू सूक्ष्म वारता, देहि बताई\n अकपट परमोदार न कछु, गुरु धरे छिपाई।।\n जय-जय-जय सतगुरु सुखद, ज्ञान सम्पूरण अंग सम।\n कृपा-दृष्टि करि हेरिये, हरिय युक्ति बेढंग मम।।4।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 5,
                    ),
                    //  छप्प्रातः कालीन नाम-संकीत्र्तन
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "प्रातः कालीन नाम-संकीर्तन",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.orange),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "अव्यक्त अनादि अनन्त अजय,\n अज आदिमूल परमातम जो।\n ध्वनि प्रथम स्फुटित परा धारा,\n जिनसे कहिये स्फोट है सो ।।1।।\n है स्फोट वही उद्गीथ वही।\n ब्रह्मनाद शब्दब्रह्म ओउम् वही।\n अति मधुर प्रणव ध्वनि धार वही,\n है परमातम-प्रतीक वही ।।2।।\n प्रभु का ध्वन्यात्मक नाम वही,\n है सारशबद सत्शब्द वही।\n है सत् चेतन अव्यक्त वहीं,\n व्यक्तो में व्यापक नाम वहीं, ।।3।।\n है सर्वव्यापिनि ध्वनि राम वही,\n सर्व-कर्षक हरि-कृष्ण नाम वही।\n है परम प्रचण्डिनि शक्ति वही,\n है शिव शंकर हर नाम वही, ।।4।।\n पुनि राम नाम है अगुण वही,\n है अकथ अगम पूर्ण काम वही।।\n स्वर-व्यंजन-रहित अघोष वही,\n चेतन ध्वनि-सिन्धु अदोष वही ।।5।।\n है एक ओउम् सतनाम वही,\n ऋषि-सेवित प्रभु का नाम वही,\n मुनि-सेवित गुरु का नाम वही।\n भजो ऊँ ऊँ प्रभु नाम यही,\n भजो ऊँ ऊँ मेँहीँ नाम यही। ।।6।।\n",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
