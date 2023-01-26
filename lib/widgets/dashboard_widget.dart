import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/widgets/ashram_widget.dart';
import '../provider/dark_theme_provider.dart';
import '../screens/about_santmat_screen.dart';
import '../screens/bhajan_pravachan_screen.dart';
import '../services/utils.dart';
import 'books_widget.dart';
import 'gallery.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = Provider.of<DarkThemeProvider>(context);
    const Color txtcol = Color.fromARGB(255, 200, 0, 0);
    final Color captionColor =
        themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color cardColor =
        themeState.getDarkTheme ? Colors.white10 : Colors.white70;
    Size size = utils.getScreenSize;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Wrap(
                  children: [

                    // BhajanPravachanScreen
                    SizedBox(
                      width: size.width * 0.33,
                      height: size.height * 0.19,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {
                          debugPrint('Card tapped.');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BhajanPravachanScreen()),
                          );
                        },
                        child: Card(
                          color: cardColor,
                          elevation: 2.0,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white12),
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(20)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pictures/dashboard/flag128.png",
                                    // width: 64.0,
                                    height: size.height * 0.05,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  // const Divider(thickness: 1,),
                                  Text("भजन एवं",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                        // fontFamily: "Eczar"
                                      )),
                                  Text("प्रवचन",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "Audio",
                                        style: TextStyle(
                                            color: captionColor,
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // SantmatScreen
                    SizedBox(
                      width: size.width * 0.33,
                      height: size.height * 0.19,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {
                          debugPrint('Card tapped.');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SantmatScreen()),
                          );
                        },
                        child: Card(
                          color: cardColor,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pictures/dashboard/about128.png",
                                    height: size.height * 0.05,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  // const Divider(thickness: 1,),
                                  Text("संतमत",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  Text("परिचय",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("About",
                                          style: TextStyle(
                                              color: captionColor,
                                              fontWeight: FontWeight.w100)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Yogashram
                    SizedBox(
                      width: size.width * 0.33,
                      height: size.height * 0.19,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {
                          debugPrint('Card tapped.');
                          Navigator.of(context)
                              .push(_createRoute(AshramWidget()));
                        },
                        child: Card(
                          color: cardColor,
                          elevation: 2.0,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white12),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pictures/dashboard/temple128.png",
                                    height: size.height * 0.05,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  // const Divider(thickness: 1,),
                                  Text("महर्षि मेँहीँ",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  Text("योगाश्रम",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Aashram",
                                          style: TextStyle(
                                              color: captionColor,
                                              fontWeight: FontWeight.w100)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // GalleryScreen
                    SizedBox(
                      width: size.width * 0.33,
                      height: size.height * 0.19,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {
                          debugPrint('Card tapped.');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GalleryScreen()),
                          );
                        },
                        child: Card(
                          color: cardColor,
                          elevation: 2.0,
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(22))),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pictures/dashboard/gallery128.png",
                                    height: size.height * 0.05,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  Text("गैलरी",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Gallery",
                                          style: TextStyle(
                                              color: captionColor,
                                              fontWeight: FontWeight.w100)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.33,
                      height: size.height * 0.19,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Card(
                          color: cardColor,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pictures/dashboard/hierarchy128.png",
                                    height: size.height * 0.05,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  Text("महासभा",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                      )),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Assembly",
                                          style: TextStyle(
                                              color: captionColor,
                                              fontWeight: FontWeight.w100)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.33,
                      height: size.height * 0.19,
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () {
                          debugPrint('Card tapped.');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BooksWidget()),
                          );
                        },
                        child: Card(
                          color: cardColor,
                          elevation: 2.0,
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(22))),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pictures/dashboard/open-book128.png",
                                    height: size.height * 0.05,
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  Text("पुस्तक",
                                      style: TextStyle(
                                        color: txtcol,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * .021,
                                        // fontFamily: "Eczar",
                                      )),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Books",
                                          style: TextStyle(
                                              color: captionColor,
                                              fontWeight: FontWeight.w100)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Route _createRoute(Widget widFun) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widFun,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}