import 'package:flutter/material.dart';
import '../widgets/SignUpInPage/sign_up_in_widget.dart';

class SignUpInPage extends StatelessWidget {
  const SignUpInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SignUpIn(),
          ],
        ),
      ),
    );
  }
}
