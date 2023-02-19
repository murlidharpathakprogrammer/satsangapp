import 'package:flutter/material.dart';
import 'package:satsangapp/screens/pdf_viewer.dart';
import 'package:satsangapp/widgets/books_widget.dart';

class BooksPage extends StatefulWidget{
  const BooksPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BooksPageState();

}

class _BooksPageState extends State<BooksPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("पाठन सामग्री"), backgroundColor: Colors.orange,),
      body: const BooksWidget(),
    );
  }
}