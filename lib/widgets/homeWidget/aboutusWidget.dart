import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/styles.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 3 containers, one on the top, one at the bottom, and one in the middle right side
        Container(
          height: 100,
          width: double.infinity,
          // color: Colors.black,
        ),
        Container(
          margin: const EdgeInsets.only(top: 150),
          height: 300,
          width: double.infinity,
          color: Colors.blue,
        ),
        // image container
        Container(
          margin: const EdgeInsets.only(top: 100, left: 600),
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
              image: AssetImage(aboutUsPhoto),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
