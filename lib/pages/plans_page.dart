import 'package:flutter/material.dart';
import '../widgets/footer/footer_widget.dart';
import '../widgets/homePage/plans_prices_widget.dart';
import '../widgets/nav_bar/nav_bar.dart';
import '../widgets/plansPage/plans_widget.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NavBar(),
            PlansWelcome(),
            PlansPrice(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
