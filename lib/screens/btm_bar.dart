import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/user.dart';
// import 'package:satsang/screens/categories.dart';
// import 'package:satsang/screens/downloads.dart';
// import 'package:satsang/screens/home_screen.dart';
// import 'package:satsang/screens/user.dart';

import '../provider/dark_theme_provider.dart';
import 'categories.dart';
import 'downloads.dart';
import 'home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'संतमत-सत्संग'},
    // {'page': const CategoriesScreen(), 'title': 'Home'},
    // {'page': const DownloadsScreen(), 'title': 'Downloads'},
    // {'page': const UserScreen(), 'title': 'Users'},
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    bool _isDark = themeState.getDarkTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('संतमत-सत्संग',
            style: GoogleFonts.amita(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontSize: 30,
              color: Colors.white,
            )),
        actions: <Widget>[

          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                splashColor: Colors.red,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserScreen()),
                  );
                },
                child: const Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const HomeScreen(),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: themeState.getDarkTheme
      //       ? Theme.of(context).cardColor
      //       : Colors.white,
      //   type: BottomNavigationBarType.shifting,
      //   selectedItemColor: _isDark ? Colors.redAccent : Colors.red,
      //   unselectedItemColor: _isDark ? Colors.white54 : Colors.black54,
      //   showUnselectedLabels: true,
      //   showSelectedLabels: true,
      //   currentIndex: _selectedIndex,
      //   onTap: _selectedPage,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //             _selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
      //         label: "Home"),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(_selectedIndex == 1
      //     //       ? IconlyBold.category
      //     //       : IconlyLight.category),
      //     //   label: "Categories",
      //     // ),
      //   ],
      // ),
    );
  }
}
