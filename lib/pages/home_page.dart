// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/SignUpInPage/sign_up_in_widget.dart';
import '../widgets/about_usPage/about_us_widget.dart';
import '../widgets/exercisePage/exercise_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/homePage/plans_widget.dart';
import '../widgets/homePage/visit_us_widget.dart';
import '../widgets/homePage/welcome_widget.dart';
import '../widgets/nav_bar.dart';
import '../widgets/homePage/about_us_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return singlechildscroll view
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // homePage(),
            // SignUpIn(),
            // exercisePage(),
            // About_UsPage()
          ],
        ),
      ),
    );
  }
}

Widget homePage() {
  return SingleChildScrollView(
    child: Column(
      children: const [
        NavBar(),
        MainPart(),
        AboutUs(),
        Plans(),
        VisitUs(),
        Footer(),
      ],
    ),
  );
}

// widget ExercisePage
Widget exercisePage() {
  return SingleChildScrollView(
    child: Column(
      children: const [
        NavBar(),
        Exercises(),
        Footer(),
      ],
    ),
  );
}

Widget About_UsPage() {
  return SingleChildScrollView(
    child: Column(
      children: const [
        NavBar(),
        About_Us(),
        Footer(),
      ],
    ),
  );
}
