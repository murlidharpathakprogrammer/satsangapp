import 'dart:io';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:satsangapp/screens/yt_screen.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../provider/dark_theme_provider.dart';

class AshramWidget extends StatelessWidget {
  AshramWidget({Key? key}) : super(key: key);
  String vidSrc = 'https://www.youtube.com/watch?v=BnQK0ue-tYk';

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
                      imageUrl:
                          "https://res.cloudinary.com/de9omilub/image/upload/v1673012232/satsangapp/images/ashram/My_project-1_22_bx1rkm.png",
                      boxFit: BoxFit.fitWidth,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "आश्रम में निवास कर रहे संत",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red, ),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        "गुरु प्रसाद बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "राम चंद्र बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "स्वामी प्रभुतानन्द जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      ReadMoreText(
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
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "आश्रम की नियमावली",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red, ),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        "गुरु प्रसाद बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "राम चंद्र बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "स्वामी प्रभुतानन्द जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      ReadMoreText(
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
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "वार्षिक महोत्सव",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red, ),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        "गुरु प्रसाद बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "राम चंद्र बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "स्वामी प्रभुतानन्द जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      ReadMoreText(
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
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "स्तुति एवं आरती",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red, ),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        "गुरु प्रसाद बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "राम चंद्र बाबा (व्यवस्थापक)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "स्वामी प्रभुतानन्द जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      const Text(
                        "महर्षि योगनन्द परमहंस जी महाराज (आचार्य)",
                        style: TextStyle(color: Colors.red),
                      ),
                      ReadMoreText(
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
