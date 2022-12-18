import 'package:flutter/material.dart';
import 'news_page.dart';

class NewsPage extends StatefulWidget{
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewsPageState();

}

class _NewsPageState extends State<NewsPage>{
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("पठन सामग्री"),
      //   backgroundColor: Colors.orange,
      // ),
      body: News(),
    );
  }
}