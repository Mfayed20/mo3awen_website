import 'package:flutter/material.dart';

import '../widgets/homeWidget/aboutusWidget.dart';
import '../widgets/homeWidget/welcome_widget.dart';
import '../widgets/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return singlechildscroll view
    return SingleChildScrollView(
      child: Column(
        children: const [
          // navigation bar
          NavBar(),
          // main part
          MainPart(),
          AboutUs(),
        ],
      ),
    );
  }
}
