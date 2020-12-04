import 'package:blocpractice/cart/address.dart';
import 'package:blocpractice/extera.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;
import 'package:blocpractice/res/button.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
                    text.cart,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: text.fontfaimlyregular,
                      fontSize: size.convert(context, 30),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          CartCard(context, false),
                          CartCard(context, false),
                          CartCard(context, false),
                          CartCard(context, false),
                          CartCard(context, false),
                          CartCard(context, false),
                          CartCard(context, false),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: NewButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Address()));
                    },
                    width: size.convert(context, 326),
                    text: text.continu,
                  ),
                ),
                SizedBox(height: size.convert(context, 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
