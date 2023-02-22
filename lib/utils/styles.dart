import 'package:flutter/material.dart';

import 'colors.dart';

// text style
class WebTextStyles {
  // navtitle
  static const TextStyle navTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle navLogoTxt = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle navItemTxt = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle home_widgets_Text = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle home_widgets_Text2 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    // fontFamily: 'Inter'
  );

  // homePageBttn ButtonStyle
  static ButtonStyle homePageBttn = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(WebColors.primaryColor),
    // button size
    minimumSize: MaterialStateProperty.all(const Size(200, 50)),

    // text size
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  );
}
