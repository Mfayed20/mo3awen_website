import 'package:flutter/material.dart';
import '../widgets/footer_widget.dart';
import '../widgets/homePage/plans_widget.dart';
import '../widgets/nav_bar.dart';
import '../widgets/plansPage/plans_widget.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            plansPage(),
          ],
        ),
      ),
    );
  }
}

Widget plansPage() {
  return SingleChildScrollView(
    child: Column(
      children: const [
        NavBar(),
        Planspage(),
        Plans(),
        Footer(),
      ],
    ),
  );
}
