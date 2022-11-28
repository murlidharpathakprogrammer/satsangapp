import 'package:flutter/material.dart';
import 'package:satsangapp/widgets/books_widget.dart';

class BooksPage extends StatefulWidget{
  const BooksPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BooksPageState();

}

class _BooksPageState extends State<BooksPage>{
  Widget build(BuildContext context){
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("पठन सामग्री"),
      //   backgroundColor: Colors.orange,
      // ),
      body: BooksWidget(),
    );
  }
}