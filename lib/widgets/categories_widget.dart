// import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:satsang/provider/dark_theme_provider.dart';
// import 'package:satsang/widgets/text_widget.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../provider/dark_theme_provider.dart';

class CategoriesWidget extends StatelessWidget{
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return InkWell(
      onTap: (){
        stdout.write('Category pressed');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.red.shade100.withOpacity(0.7), width: 2),
        ),
        child: Column(
          children: [
            Shimmer(
              child: Container(
                height: screenWidth*0.2,
                width: screenWidth * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://tinypng.com/images/example-shrunk.png"),
                    fit: BoxFit.fill,
                    ),

                  ),
                ),
            ),
            TextWidget(
              text: 'Category name',
              color: color,
              textSize: 20,
              isTitle: true,
            ),
          ],
        ),
      ),
    );
  }
}