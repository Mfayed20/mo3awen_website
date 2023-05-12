import 'package:flutter/material.dart';
import '../../widgets/contactUsPage/contact_us.dart';
import '../../widgets/footer/footer_widget.dart';
import '../../widgets/homePage/visit_us_widget.dart';
import '../../widgets/nav_bar/nav_bar.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            ContactUs(),
            VisitUs(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
