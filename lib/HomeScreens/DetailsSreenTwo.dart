import 'package:blocpractice/HomeScreens/detailsscreentwonew.dart';
import 'package:blocpractice/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/res/button.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;
import 'package:blocpractice/res/size_config.dart';

class SecondDetailsScreen extends StatelessWidget {
  bool isnewscreen = false;
  SecondDetailsScreen(this.isnewscreen);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.convert(context, 15)),
              CustomAppBar(
                context: context,
                text: text.appname,
              ),
              SizedBox(height: size.convert(context, 15)),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.convert(context, 175),
                      child: Image.asset(
                        text.image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(
                      text.detailsfirsttext,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: text.fontfaimlyregular,
                        fontSize: size.convert(context, 25),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$42",
                          style: TextStyle(
                            color: Color(0xff667EEA),
                          ),
                        ),
                        SizedBox(width: size.convert(context, 15)),
                        Text(
                          "\$62",
                          style: TextStyle(
                            color: Color(0xff667EEA),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 1,
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff667EEA),
                              borderRadius: BorderRadius.circular(
                                size.convert(context, 5),
                              ),
                            ),
                            width: size.convertWidth(context, 65),
                            height: size.convert(context, 34),
                            child: Center(
                                child: Text(
                              "4.5",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          Text(
                            text.verygood,
                          ),
                          Text(
                            text.reviews,
                            style: TextStyle(
                              color: Color(0xff667EEA),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Text(
                        text.description,
                        style: TextStyle(
                          fontFamily: text.fontfaimlyregular,
                          fontSize: size.convert(context, 16),
                        ),
                      ),
                      Text(
                        text.descriptiondetails,
                        style: TextStyle(
                            color: Color(0xff656565),
                            fontSize: size.convert(context, 14)),
                      ),
                      Divider(),
                      SizedBox(height: size.convert(context, 5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(text.sizetext),
                          Text(text.color),
                        ],
                      ),
                      SizedBox(height: size.convert(context, 15)),
                      Divider(
                        height: 10,
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: size.convert(context, 50),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizeContainer(
                                color: Color(0xffF3F3F3),
                                text: "S",
                                context: context),
                            SizeContainer(
                                color: Color(0xff667EEA),
                                text: "M",
                                context: context,
                                textcolor: Colors.white),
                            SizeContainer(
                                color: Color(0xffF3F3F3),
                                text: "L",
                                context: context),
                            SizeContainer(
                                color: Color(0xffF3F3F3),
                                text: "XXL",
                                context: context),
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      isnewscreen
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NewButton(
                                  width: size.convert(context, 169),
                                  text: text.textaddtocart,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                CartScreen()));
                                  },
                                ),
                                NewButton(
                                  width: size.convert(context, 169),
                                  text: text.buynow,
                                ),
                              ],
                            )
                          : NewButton(
                              text: text.buynow,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetailsNewScreen()));
                              },
                            ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
