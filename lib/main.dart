import 'package:flutter/material.dart';
import 'package:nikee/models/cart.dart';
import 'package:nikee/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext Context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),
      );
  }
}