import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';
import '../services/utils.dart';

class AshramWidget extends StatelessWidget{
  const AshramWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double _screenWidth = MediaQuery.of(context).size.width;
    // final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    final Color txtcol = themeState.getDarkTheme ? Colors.red : Colors.deepOrange;
    final Color captionColor = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color cardColor = themeState.getDarkTheme ? Colors.black87 : Colors.white;



    return Scaffold(
      appBar: AppBar(title: const Text("योगाश्रम"), backgroundColor: Colors.orange,),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            Size size = Utils(context).getScreenSize;

            return InkWell(
              splashColor: Colors.red,
              onTap: (){print('clicked');},
              child: Card(
                shadowColor: Colors.red,
                child: const SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(
                    child: ListTile(
                      leading: Icon(IconlyLight.document),
                      title: Text('योगाश्रम 1'),
                      subtitle: Text('Baijnathpur'),
                      trailing: Icon(IconlyLight.arrow_right),

                    ),
                  ),
                ),
                color: cardColor,
              ),
            );
            // return const Card(
            //   // elevation: 5,
            //
            //   color: Colors.grey,
            //   child: ListTile(
            //     leading: Icon(Icons.icecream),
            //     title: Text('I like icecream'),
            //     subtitle: Text('Icream is good for health'),
            //     trailing: Icon(Icons.food_bank),
            //
            //   ),
            // );
          }),
    );
  }
}