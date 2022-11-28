import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';

import '../services/utils.dart';
import '../widgets/dashboard_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _swiperImages = [
    'https://res.cloudinary.com/de9omilub/image/upload/v1667900251/satsangapp/images/hoomeSwiper/1.png',
    'https://res.cloudinary.com/de9omilub/image/upload/v1667900306/satsangapp/images/hoomeSwiper/2.png',
    'https://res.cloudinary.com/de9omilub/image/upload/v1667900218/satsangapp/images/hoomeSwiper/3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = utils.getTheme;
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
                errorWidget: Image.network('https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
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
        const Expanded(child: DashboardWidget()),
      ]),
    );
  }
}
