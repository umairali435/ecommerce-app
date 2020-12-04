import 'package:flutter/material.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.convert(context, 15)),
                  CustomAppBar(
                    image: "assets/images/backbutton.svg",
                    context: context,
                  ),
                  SizedBox(height: size.convert(context, 15)),
                  Text(
                    text.orders,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: text.fontfaimlyregular,
                      fontSize: size.convert(context, 30),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    CartCard(context, true),
                    CartCard(context, true),
                    CartCard(context, true),
                    CartCard(context, true),
                    CartCard(context, true),
                    CartCard(context, true),
                    CartCard(context, true),
                    CartCard(context, true),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
