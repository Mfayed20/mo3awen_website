import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mo3awen',
      theme: ThemeData(
        brightness: Brightness.light,
        // primaryColor: WebColors.primaryColor,
      ),
      home: const HomePage(),
    );
  }
}
