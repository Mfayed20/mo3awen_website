import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mainMobile(),
      desktop: mainTabletDesktop(),
    );
  }
}

// main part mobile
Widget mainMobile() {
  return Container(
    height: double.tryParse("700"),
    width: double.infinity,
    padding: const EdgeInsets.only(left: 50),
    decoration: const BoxDecoration(
      color: WebColors.homeBGColor,
      image: DecorationImage(
        image: AssetImage(homePhoto),
        fit: BoxFit.scaleDown,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'NO LONGER IS THERE A NEED TO DO',
          style: WebTextStyles.home_widgets_Text,
        ),
        const Text(
          'BORING EXERCISES',
          style: WebTextStyles.home_widgets_Text,
        ),
        const SizedBox(height: 50),
        const Text(
          'TIME FOR FUN',
          style: WebTextStyles.home_widgets_Text2,
        ),
        const SizedBox(height: 30),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(5),
          child: const Text(
            'COMBING GAMING WITH EXERCISING',
            style: WebTextStyles.home_widgets_Text,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(left: 110),
          child: homePageBttn('BROWSE EXERCISES'),
        ),
      ],
    ),
  );
}

// main part tablet and desktop
Widget mainTabletDesktop() {
  return Container(
    height: double.tryParse("700"),
    width: double.infinity,
    padding: const EdgeInsets.only(left: 50),
    decoration: const BoxDecoration(
      color: WebColors.homeBGColor,
      image: DecorationImage(
        image: AssetImage(homePhoto),
        fit: BoxFit.scaleDown,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'NO LONGER IS THERE A NEED TO DO',
          style: WebTextStyles.home_widgets_Text,
        ),
        const Text(
          'BORING EXERCISES',
          style: WebTextStyles.home_widgets_Text,
        ),
        const SizedBox(height: 50),
        const Text(
          'TIME FOR FUN',
          style: WebTextStyles.home_widgets_Text2,
        ),
        const SizedBox(height: 30),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(5),
          child: const Text(
            'COMBING GAMING WITH EXERCISING',
            style: WebTextStyles.home_widgets_Text,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(left: 110),
          child: homePageBttn('BROWSE EXERCISES'),
        ),
      ],
    ),
  );
}

Widget homePageBttn(String title) {
  return ElevatedButton(
    onPressed: () {},
    style: WebTextStyles.homePageBttn,
    child: Text(title),
  );
}
