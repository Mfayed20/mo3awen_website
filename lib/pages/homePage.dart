import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NavBar());
  }
}
