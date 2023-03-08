import 'package:flutter/material.dart';
import '../widgets/contactUsPage/contact_us.dart';
import '../widgets/footer_widget.dart';
import '../widgets/homePage/visit_us_widget.dart';
import '../widgets/nav_bar.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            contactUsPage(),
          ],
        ),
      ),
    );
  }
}

Widget contactUsPage() {
  return SingleChildScrollView(
    child: Column(
      children: const [
        NavBar(),
        ContactUs(),
        VisitUs(),
        Footer(),
      ],
    ),
  );
}
