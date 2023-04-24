import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTopSection(context),
          const SizedBox(height: 16),
          _buildBottomSection(context),
        ],
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth <= 600;

    return SizedBox(
      width: double.infinity,
      child: isSmallScreen
          ? Column(
              children: [
                AspectRatio(
                  aspectRatio: 1440 / 746,
                  child: Image.network(
                    aboutUsbgimg1,
                    fit: BoxFit.cover,
                  ),
                ),
                _buildTopTextOverlay(context),
              ],
            )
          : Stack(
              alignment: Alignment.bottomCenter, // Add this line
              children: [
                AspectRatio(
                  aspectRatio: 1440 / 746,
                  child: Image.network(
                    aboutUsbgimg1,
                    fit: BoxFit.cover,
                  ),
                ),
                _buildTopTextOverlay(context),
              ],
            ),
    );
  }

  Widget _buildTopTextOverlay(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = screenWidth / 8; // 1/4 of the screen width divided by 2

    return Padding(
      padding: EdgeInsets.only(bottom: 16, left: margin, right: margin),
      child: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                color: const Color(0x4cc5c5c5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: _buildTopTextContent(screenWidth),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopTextContent(double screenWidth) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Passionate About Helping Others',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
        ).scalableText(screenWidth, 1.2),
        const SizedBox(height: 8),
        RichText(
          text: const TextSpan(
            text:
                "Although Mo3awen can help make your work out fun, it is not it's main goal. High percentage of people who need physical therapy are elderly or people who had surgery. Going to the hospital would be a bit difficult for them, with Mo3awen they can do their physical therapy at home with the doctor being able to monitor their progress easily.",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ).scalableText(screenWidth),
      ],
    );
  }

  Widget _buildBottomTextContent(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                text: 'BUILDING A COMMUNITY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0076f9),
                ),
              ),
            ).scalableText(screenWidth, 1.2),
          ),
          const SizedBox(height: 30),
          RichText(
            text: const TextSpan(
              text:
                  "With the website, we are hoping to build a community, a big support group if you will. People can share their experiences with others who can easily sympathize with them since they went through something similar. Patients can even make friends since it is hard for them to leave their home due to what they are going through. Doctors can post motivational content on the website for patients to help them and show them that doctors are with them",
              style: TextStyle(color: Colors.black),
            ),
          ).scalableText(screenWidth),
        ],
      ),
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Container(
      color: const Color(0xff0076f9),
      child: Row(
        children: [
          _buildBottomLeftImage(context),
          _buildBottomRightText(context),
        ],
      ),
    );
  }

  Widget _buildBottomLeftImage(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double scaleFactor = screenWidth < 600 ? 18 : 24;
    double scaleFactor = screenWidth / 1440;

    return Expanded(
      child: AspectRatio(
        aspectRatio: 702 / 468,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            82 * scaleFactor,
            114 * scaleFactor,
            0,
            80 * scaleFactor,
          ),
          child: Image.network(
            aboutUsbgimg2,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomRightText(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 16, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.white,
        ),
        child: _buildBottomTextContent(context),
      ),
    );
  }
}

extension ScalableRichText on RichText {
  Widget scalableText(double screenWidth, [double scaleFactor = 1]) {
    return Transform.scale(
      scale: scaleFactor,
      child: this,
    );
  }
}
