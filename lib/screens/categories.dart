import 'package:flutter/material.dart';
import '../widgets/categories_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 160 / 180,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            children: List.generate(6, (index) {
              return const CategoriesWidget();
            }),
          ),
        )
    );
  }
}
