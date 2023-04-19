import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: const FirebaseOptions(
      //   appId: '1:1005036712664:web:67fce031bdeb7fc90c9dad',
      //   apiKey: 'AIzaSyA4m5MMpFmbXunNTmSrqeqfoI-HB8mF2Lg',
      //   projectId: 'mo3awen-d2404',
      //   messagingSenderId: '1005036712664',
      //   databaseURL: 'https://mo3awen-d2404-default-rtdb.firebaseio.com',
      // ),
      );
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
