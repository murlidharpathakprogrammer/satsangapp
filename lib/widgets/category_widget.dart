import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
// import 'package:satsang/services/utils.dart';
// import 'package:satsang/widgets/text_widget.dart';
import 'package:satsangapp/widgets/text_widget.dart';

import '../services/utils.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    // final theme = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Material(
      color: Theme.of(context).cardColor.withOpacity(0.9),
      borderRadius: BorderRadius.circular(4),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          IconlyLight.document,
                          size: size.width * 0.3,
                          color: color,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Books',
                              color: color,
                              textSize: 20,
                              isTitle: true,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          IconlyLight.document,
                          size: size.width * 0.30,
                          color: color,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Bhajan',
                              color: color,
                              textSize: 20,
                              isTitle: true,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          IconlyLight.document,
                          size: size.width * 0.3,
                          color: color,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Gallery',
                              color: color,
                              textSize: 20,
                              isTitle: true,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          IconlyLight.document,
                          size: size.width * 0.3,
                          color: color,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Programs',
                              color: color,
                              textSize: 20,
                              isTitle: true,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          IconlyLight.document,
                          size: size.width * 0.3,
                          color: color,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Ashram',
                              color: color,
                              textSize: 20,
                              isTitle: true,
                            ),
                            const SizedBox(
                              height: 12,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          IconlyLight.document,
                          size: size.width * 0.3,
                          color: color,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Swamiji',
                              color: color,
                              textSize: 20,
                              isTitle: true,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
