import 'package:flutter/material.dart';

class SplashScreeen extends StatelessWidget {
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEC2028),
        body: Center(
          child: Container(child: Image.asset('image/logo.png')),
        ),
      ),
    );
  }
}
