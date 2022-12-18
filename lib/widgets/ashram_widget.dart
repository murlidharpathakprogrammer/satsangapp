import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import '../provider/dark_theme_provider.dart';

class AshramWidget extends StatelessWidget{
  const AshramWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color cardColor = themeState.getDarkTheme ? Colors.black87 : Colors.white;

    return Scaffold(
      appBar: AppBar(title: const Text("योगाश्रम"), backgroundColor: Colors.orange,),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            // Size size = Utils(context).getScreenSize;

            return InkWell(
              splashColor: Colors.red,
              onTap: (){stdout.write('clicked');},
              child: Card(
                shadowColor: Colors.red,
                color: cardColor,
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
              ),
            );
          }),
    );
  }
}