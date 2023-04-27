import 'package:flutter/material.dart';
import '../../widgets/about_usPage/about_us_widget.dart';
import '../../widgets/footer/footer_widget.dart';
import '../../widgets/nav_bar/nav_bar.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NavBar(),
            AboutUsWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
