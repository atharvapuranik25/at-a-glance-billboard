import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, "home"));

    var assetsImage = const AssetImage(
        'images/flutter_logo.png'); //<- Creates an object that fetches an image.
    var image = Image(
        image: assetsImage,
        height: 300); //<- Creates a widget that displays an image.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: Center(child: image),
        ),
      ),
    );
  }
}
