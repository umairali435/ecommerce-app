import 'package:blocpractice/HomeScreens/DetailsSreenTwo.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  bool isnewscreen = false;
  DetailsScreen(this.isnewscreen);
  @override
  Widget build(BuildContext context) {
    return SecondDetailsScreen(false);
  }
}
