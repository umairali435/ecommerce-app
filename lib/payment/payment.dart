import 'package:blocpractice/cart/addingaddress.dart';
import 'package:blocpractice/payment/checkout.dart';
import 'package:blocpractice/res/button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;
import 'package:blocpractice/res/size_config.dart';
import 'package:blocpractice/extera.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../dotttedborder.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15.0,
                ),
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
                        text.payment,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: text.fontfaimlyregular,
                          fontSize: size.convert(context, 30),
                        ),
                      ),
                      SizedBox(height: size.convert(context, 15)),
                      CarouselSlider(
                        options: CarouselOptions(height: 200.0),
                        items: [
                          "assets/images/creditcard.svg",
                          "assets/images/creditcard.svg",
                          "assets/images/creditcard.svg",
                          "assets/images/creditcard.svg",
                          "assets/images/creditcard.svg"
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  alignment: Alignment.topCenter,
                                  height: size.convert(context, 140),
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  child: SvgPicture.asset(
                                    i,
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      totaling(context),
                      SizedBox(height: size.convert(context, 30)),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Center(
                                  child: Container(
                                    width: size.convertWidth(context, 326),
                                    height: size.convert(context, 44),
                                    child: DashedRect(
                                        color: Color(0xff667EEA),
                                        strokeWidth: 1.0,
                                        gap: 3.0),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        alignment: Alignment.center,
                                        width: size.convertWidth(context, 326),
                                        height: size.convert(context, 44),
                                        child: Text(
                                          text.addcard,
                                          style: TextStyle(
                                              color: Color(0xff667EEA),
                                              fontSize:
                                                  size.convert(context, 20)),
                                        )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: size.convert(context, 20)),
                            Center(
                                child: NewButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CheckOut()));
                              },
                              text: text.checkout,
                              width: size.convertWidth(context, 326),
                            )),
                            SizedBox(height: size.convert(context, 15)),
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
