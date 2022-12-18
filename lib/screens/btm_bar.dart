import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:satsangapp/screens/user.dart';
import 'home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}