import 'package:flutter/material.dart';
import '../widgets/exercisePage/exercise_widget.dart';
import '../widgets/footer/footer_widget.dart';
import '../widgets/nav_bar/nav_bar.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NavBar(),
            ExercisesWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
