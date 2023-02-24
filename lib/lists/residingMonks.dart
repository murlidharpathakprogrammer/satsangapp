import 'package:flutter/material.dart';

import '../screens/gallery_screen.dart';

class ResidingMonkWidget extends StatelessWidget {
  const ResidingMonkWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<List<String>> residingMonks = [
      ['महर्षि योगनन्द परमहंस जी महाराज', 'आचार्य', 'yoganand.png'],
      ['गुरु प्रसाद बाबा', 'व्यवस्थापक', ''],
      ['राम चंद्र बाबा', 'व्यवस्थापक', 'ramchandra.jpg'],
      ['स्वामी प्रभुतानन्द जी महाराज', '', 'prabhutanand.jpg'],
      ['प्रलोग बाबा', '', 'pralog.jpg'],
      ['ब्रह्मचारी विद्यानंद', '', 'vidyanand.jpg'],
      ['शिवानंद सुमन', '', 'shivanandSuman.jpg'],
      ['पंकज ब्रह्मचारी', '', 'pankajJi.jpg'],
      ['लक्ष्मण बाबा', '', 'laxman.jpg']
    ];
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: residingMonks.length,
        itemBuilder: (context, int index) => Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImagePage(
                            imageUrl:
                                'https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/residingMonks/tr:pr-true/${residingMonks[index][2]}',
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/residingMonks/tr:q-10,pr-true/${residingMonks[index][2]}"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        residingMonks[index][0],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        residingMonks[index][1],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8)
                    ],
                  )
                ],
              ),
            )
        // ListTile(
        //   leading: const Icon(Icons.person),
        //   title: Text(residingMonks[index]),
        // ),

        );
  }
}
