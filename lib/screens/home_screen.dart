import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/news_screen.dart';
import '../provider/dark_theme_provider.dart';
import '../services/utils.dart';
import '../widgets/dashboard_widget.dart';
import '../widgets/news_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _swiperImages = [
    'https://res.cloudinary.com/de9omilub/image/upload/v1669761679/satsangapp/images/hoomeSwiper/edit_1_i7qny5.jpg',
    'https://res.cloudinary.com/de9omilub/image/upload/v1669761679/satsangapp/images/hoomeSwiper/edit_2_zpfgvz.jpg',
    'https://res.cloudinary.com/de9omilub/image/upload/v1672309850/satsangapp/images/hoomeSwiper/WhatsApp_Image_2022-12-09_at_19.47.00_f3qmpm.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color progTxtCol = themeState.getDarkTheme
        ? const Color.fromRGBO(255, 227, 212, 1.0)
        : const Color.fromRGBO(178, 0, 14, 1.0);
    final Color progBorder = themeState.getDarkTheme? const Color.fromRGBO(
        120, 142, 255, 0.5) : const Color.fromRGBO(0, 0, 255, 0.1);
    final Color progTxtShadow = themeState.getDarkTheme? const Color.fromRGBO(0, 0, 0, 0) : const Color.fromRGBO(255, 255, 255, 1);
    Size size = utils.getScreenSize;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: size.height * 0.35,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return FancyShimmerImage(
                // maxHeightDiskCache: 360,
                imageUrl: _swiperImages[index],
                shimmerBaseColor: Colors.orange,
                shimmerHighlightColor: Colors.red,
                // shimmerBackColor: Colors.orange,
                boxFit: BoxFit.fill,
                errorWidget: Image.asset("assets/images/offers/logoCenter.png"),
              );
            },
            autoplay: true,
            itemCount: _swiperImages.length,
            pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                  color: Colors.black45, activeColor: Colors.deepOrange),
            ),
            control: const SwiperControl(color: Color.fromRGBO(255, 0, 0, 0)),
          ),
        ),
        Card(
          // elevation: 2,
          // shadowColor: const Color.fromRGBO(192, 183, 250, 1.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Row(
            children: [
              SizedBox(
                height: 0.09 * size.height,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(10)),
                      side: BorderSide(
                          color: progBorder)),
                  child: InkWell(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(10)),
                    splashColor: Colors.brown.withOpacity(0.7), // Splash color
                    onTap: () {},
                    child: Ink(
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(10)),
                        image: DecorationImage(
                          opacity: 0.4,
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/pictures/login3.jpg'), // Background image
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                        child: Row(
                          children: [
                            Column(children: [
                              Text(
                                "आगामी\n प्रोग्राम",
                                style: TextStyle(
                                    color: progTxtCol,
                                    fontSize: 19,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 30,
                                          color: progTxtShadow,
                                          offset: const Offset(1, 1))
                                    ]),
                              ),
                            ]),
                            Column(children: const [
                              Icon(Icons.arrow_right),

                              // TextWidget(text: "प्रोग्राम", color: progTxtCol, textSize: 22, isTitle: true,),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 0.1 * size.height,
                  child: const NewsWidget(),
                ),
              ),
              SizedBox(
                height: 0.09 * size.height,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(10)),
                      side: BorderSide(
                          color: progBorder)),
                  child: InkWell(
                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(10)),
                    splashColor: Colors.brown.withOpacity(0.7), // Splash color
                    onTap: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewsPage()),
                          );
                    },
                    child: Ink(
                      decoration: const BoxDecoration(
                        borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(10)),
                        image: DecorationImage(
                          opacity: 0.4,
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/pictures/login3.jpg'), // Background image
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                        child: Row(
                          children: [
                            Column(children: [
                              Text(
                                "और\nदेखें",
                                style: TextStyle(
                                    color: progTxtCol,
                                    fontSize: 19,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 30,
                                          color: progTxtShadow,
                                          offset: const Offset(1, 1))
                                    ]),
                              ),

                              // TextWidget(text: "प्रोग्राम", color: progTxtCol, textSize: 22, isTitle: true,),
                            ]),
                            Column(children: const [
                              Icon(Icons.arrow_right),
                            ]),
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
        const Expanded(child: DashboardWidget()),
      ]),
    );
  }
}