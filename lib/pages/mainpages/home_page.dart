import 'package:flutter/material.dart';
import '../../widgets/footer/footer_widget.dart';
import '../../widgets/homePage/plans_prices_widget.dart';
import '../../widgets/homePage/visit_us_widget.dart';
import '../../widgets/homePage/welcome_widget.dart';
import '../../widgets/nav_bar/nav_bar.dart';
import '../../widgets/homePage/about_us_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NavBar(),
            WelcomeHP(),
            AboutUsHP(),
            PlansPrice(),
            VisitUs(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
