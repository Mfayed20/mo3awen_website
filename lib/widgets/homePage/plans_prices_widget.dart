import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

// This widget displays the plans and prices section of the page
class PlansPrice extends StatelessWidget {
  const PlansPrice({Key? key}) : super(key: key);

  // Build the widget tree for this widget
  @override
  Widget build(BuildContext context) {
    // Calculate the scaling factor based on screen size
    double screenWidthRatio = MediaQuery.of(context).size.width / 1440;

    // Return a container with a background image and plan items
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(plansPhoto),
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Show the title of the section
            Align(
              alignment: Alignment.topLeft,
              child: _buildTitle(screenWidthRatio),
            ),
            // Show the plan items
            _buildPlanItems(context, screenWidthRatio),
          ],
        ),
      ),
    );
  }

  // This method returns the title of the plans section
  Widget _buildTitle(double screenWidthRatio) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PLANS',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 40.0 * screenWidthRatio,
            fontWeight: FontWeight.w700,
            color: const Color(0xff000000),
          ),
        ),
        Container(
          height: 2,
          width: 50,
          color: const Color(0xff2774b4),
          margin: const EdgeInsets.only(top: 8, bottom: 16),
        ),
      ],
    );
  }

  // This method returns the plan items
  Widget _buildPlanItems(BuildContext context, double screenWidthRatio) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          // For small screens, use a column layout
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Show the 6 month plan item
              PlanItem(
                screenWidthRatio: screenWidthRatio,
                duration: '6 MONTH',
                discount: '5% Discount',
                price: '5000',
                validity: 'Valid for 6 month',
              ),
              SizedBox(height: 20 * screenWidthRatio),
              // Show the 1 year plan item
              PlanItem(
                screenWidthRatio: screenWidthRatio,
                duration: '1 YEAR',
                discount: '10% Discount',
                price: '9000',
                validity: 'Valid for 1 YEAR',
              ),
              SizedBox(height: 20 * screenWidthRatio),
              // Show the 2 year plan item
              PlanItem(
                screenWidthRatio: screenWidthRatio,
                duration: '2 YEAR',
                discount: '15% Discount',
                price: '16000',
                validity: 'Valid for 2 YEAR',
              ),
            ],
          );
        } else {
          // For larger screens, use a row layout
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: PlanItem(
                  screenWidthRatio: screenWidthRatio,
                  duration: '6 MONTH',
                  discount: '5% Discount',
                  price: '5000',
                  validity: 'Valid for 6 month',
                ),
              ),
              SizedBox(width: 20 * screenWidthRatio),
              Expanded(
                child: Transform.translate(
                  offset: Offset(0, -70 * screenWidthRatio),
                  child: PlanItem(
                    screenWidthRatio: screenWidthRatio,
                    duration: '1 YEAR',
                    discount: '10% Discount',
                    price: '9000',
                    validity: 'Valid for 1 YEAR',
                  ),
                ),
              ),
              SizedBox(width: 20 * screenWidthRatio),
              Expanded(
                child: PlanItem(
                  screenWidthRatio: screenWidthRatio,
                  duration: '2 YEAR',
                  discount: '15% Discount',
                  price: '16000',
                  validity: 'Valid for 2 YEAR',
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

// This widget displays a single plan item
class PlanItem extends StatelessWidget {
  final double screenWidthRatio;
  final String duration;
  final String discount;
  final String price;
  final String validity;

  const PlanItem({
    Key? key,
    required this.screenWidthRatio,
    required this.duration,
    required this.discount,
    required this.price,
    required this.validity,
  }) : super(key: key);

  // Build the widget tree for this widget
  @override
  Widget build(BuildContext context) {
    // Define text styles for the plan item
    TextStyle normalStyle = TextStyle(
      fontFamily: "Inter",
      fontSize: 24.0 * screenWidthRatio,
      fontWeight: FontWeight.w500,
      color: const Color(0xff000000),
    );
    TextStyle riyalStyle = TextStyle(
      fontFamily: "Inter",
      fontSize: 20.0 * screenWidthRatio,
      fontWeight: FontWeight.w500,
      color: const Color(0xff000000),
    );
    TextStyle durationStyle = TextStyle(
      fontFamily: "Inter",
      fontSize: 30.0 * screenWidthRatio,
      fontWeight: FontWeight.w600,
      color: const Color(0xff4098fb),
    );
    TextStyle priceStyle = TextStyle(
      fontFamily: "Inter",
      fontSize: 80.0 * screenWidthRatio,
      fontWeight: FontWeight.w600,
      color: const Color(0xff4098fb),
    );
    TextStyle textBttnStyle = TextStyle(
      fontFamily: "Inter",
      fontSize: 30.0 * screenWidthRatio,
      fontWeight: FontWeight.w500,
      color: const Color(0xff000000),
    );

    // Return a container with the plan item content
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 3,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: const Color(0x4cc5c5c5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Show the plan duration
              Text(
                duration,
                style: durationStyle,
              ),
              const SizedBox(height: 10.0),
              // Show the plan discount
              Text(
                discount,
                style: normalStyle,
              ),
              const SizedBox(height: 20.0),
              // Show the plan price
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: priceStyle,
                  ),
                  const SizedBox(width: 10.0),
                  Text('Riyal', style: riyalStyle),
                ],
              ),
              const SizedBox(height: 20.0),
              // Show the plan validity
              Text(validity, style: normalStyle),
              const SizedBox(height: 30.0),
              // Show the select plan button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  foregroundColor: const Color(0xff000000),
                  backgroundColor: const Color(0xff0076f9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onPressed: () => _showAlertDialog(context, duration),
                child: Text('SELECT', style: textBttnStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Show an alert dialog with the selected plan when the user clicks the select plan button
  void _showAlertDialog(BuildContext context, String plan) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: RichText(
            text: TextSpan(
              text: 'You have selected ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: plan,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const TextSpan(
                  text: ' plan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
