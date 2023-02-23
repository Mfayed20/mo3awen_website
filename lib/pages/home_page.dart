import 'package:flutter/material.dart';

import '../widgets/footer_widget.dart';
import '../widgets/homeWidget/plans_widget.dart';
import '../widgets/homeWidget/visit_us_widget.dart';
import '../widgets/homeWidget/welcome_widget.dart';
import '../widgets/nav_bar.dart';
import '../widgets/homeWidget/about_us_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return singlechildscroll view
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // navigation bar
            NavBar(),
            MainPart(),
            AboutUs(),
            Plans(),
            VisitUs(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
