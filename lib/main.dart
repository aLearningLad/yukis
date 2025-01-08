import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukis/models/shop.dart';
import 'package:yukis/pages/intro_page.dart';
import 'package:yukis/pages/menu_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Shop(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yuki's",
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage()
      },
    );
  }
}
