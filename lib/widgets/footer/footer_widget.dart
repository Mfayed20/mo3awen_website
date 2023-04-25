import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/about_us_page.dart';
import 'package:mo3awen_website/pages/contact_us_page.dart';
import 'package:mo3awen_website/pages/exercise_page.dart';
import 'package:mo3awen_website/pages/plans_page.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/constants.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe2e2e2),
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 650) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFooterLogoAndDescription(context),
                    _buildQuickLinksColumn(context),
                    const SizedBox(height: 20),
                    _buildServicesColumn(context),
                    const SizedBox(height: 20),
                    _buildGetInTouchColumn(context),
                  ],
                );
              } else {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFooterLogoAndDescription(context),
                      const SizedBox(height: 20),
                      _buildQuickLinksColumn(context),
                      const SizedBox(height: 20),
                      _buildServicesColumn(context),
                      const SizedBox(height: 20),
                      _buildGetInTouchColumn(context),
                    ],
                  ),
                );
              }
            },
          ),
          const SizedBox(height: 40),
          const Center(
            child: Text(
              "© 2023 M03AWEN. All rights reserved.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFooterLogoAndDescription(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 12.0 : 14.0; // Adjust font size based on screen width

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(footerLogoImg, width: 100),
      const SizedBox(height: 10),
      SizedBox(
        width: 250,
        child: Text(
          "The main goal of Mo3awen is to \nhelp you do your physical therapy.\nIt adds a fun element to the dull \nroutine of working out.",
          style: TextStyle(
              fontSize: fontSize,
              color: Colors.black), // Use the adjusted font size
        ),
      ),
    ],
  );
}

// Rest of the code for _buildQuickLinksColumn, _buildServicesColumn, and _buildGetInTouchColumn
Widget _buildQuickLinksColumn(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 12.0 : 14.0; // Adjust font size based on screen width
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Quick Links",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Container(
          height: 2,
          width: 50,
          color: const Color(0xff2774b4),
          margin: const EdgeInsets.only(top: 8, bottom: 16)),
      InkWell(
        child: Text("Exercises", style: TextStyle(fontSize: fontSize)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExercisePage()),
          );
        },
      ),
      const SizedBox(height: 8),
      InkWell(
        child: Text("Plans", style: TextStyle(fontSize: fontSize)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PlansPage()),
          );
        },
      ),
      const SizedBox(height: 8),
      InkWell(
        child: Text("About Us", style: TextStyle(fontSize: fontSize)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutUsPage()),
          );
        },
      ),
      const SizedBox(height: 8),
      InkWell(
        child: Text("Contact Us", style: TextStyle(fontSize: fontSize)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContactUsPage()),
          );
        },
      ),
    ],
  );
}

Widget _buildServicesColumn(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 12.0 : 14.0; // Adjust font size based on screen width
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Services",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Container(
          height: 2,
          width: 50,
          color: const Color(0xff2774b4),
          margin: const EdgeInsets.only(top: 8, bottom: 16)),
      InkWell(
        child: Text("Exercises", style: TextStyle(fontSize: fontSize)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExercisePage()),
          );
        },
      ),
      const SizedBox(height: 8),
      InkWell(
        child: Text("Plans", style: TextStyle(fontSize: fontSize)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PlansPage()),
          );
        },
      ),
    ],
  );
}

Widget _buildGetInTouchColumn(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 12.0 : 14.0; // Adjust font size based on screen width
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Get In Touch",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Container(
          height: 2,
          width: 50,
          color: const Color(0xff2774b4),
          margin: EdgeInsets.only(top: 8, bottom: fontSize)),
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          const Icon(Icons.phone, size: 20),
          Text("999 999 9999", style: TextStyle(fontSize: fontSize)),
        ],
      ),
      const SizedBox(height: 8),
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          const Icon(Icons.mail, size: 20),
          Text("mo3awen@gmail.com", style: TextStyle(fontSize: fontSize)),
        ],
      ),
      const SizedBox(height: 8),
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          const Icon(Icons.location_on, size: 20),
          Text(
            "Mo3awen, Riyadh, Saudi Arabia",
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
      const SizedBox(height: 16),
      Row(
        children: [
          IconButton(
            onPressed: () {
              _launchUrl("https://www.instagram.com/");
            },
            icon: Image.asset(
              footerInstagrameImg,
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {
              _launchUrl("https://twitter.com/");
            },
            icon: Image.asset(
              footerTwitterImg,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
      const Text("UPDOWN STUDIO",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    ],
  );
}

void _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw Exception('Could not launch $url');
  }
}
