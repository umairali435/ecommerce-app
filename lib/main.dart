import 'package:blocpractice/lsscreens.dart';
import 'package:blocpractice/signinandsignup/loginandsignup.dart';
import 'package:blocpractice/splashscreen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnSelectingSecreen(),
    );
  }
}
