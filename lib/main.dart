import 'package:flutter/material.dart';

import 'https://flutlab.io/root/app/lib/login.dart';
import 'https://flutlab.io/root/app/lib/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreeen();
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Application',
              home: login(),
            );
          }
        });
  }
}
