import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 3 containers, one for the image and two for the text
        Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/regalMensed7.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.white,
          child: const Text(
            'About Us',
            style: WebTextStyles.home_widgets_Text,
          ),
        ),
      ],
    );
  }
}
