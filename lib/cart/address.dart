import 'package:blocpractice/cart/addingaddress.dart';
import 'package:blocpractice/dotttedborder.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/res/button.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                text.address,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: text.fontfaimlyregular,
                  fontSize: size.convert(context, 30),
                ),
              ),
              Container(
                width: size.convert(context, 316),
                child: Column(
                  children: [
                    SizedBox(height: size.convert(context, 20)),
                    Row(
                      children: [
                        Text(
                          text.addresstext,
                          style: TextStyle(
                              color: Color(0xff434343),
                              fontSize: size.convert(context, 18)),
                        ),
                        Radio(value: null, groupValue: null, onChanged: null)
                      ],
                    ),
                    SizedBox(height: size.convert(context, 20)),
                    Row(
                      children: [
                        Text(
                          text.secondaddress,
                          style: TextStyle(
                            fontSize: size.convert(context, 18),
                            color: Color(0xff434343),
                          ),
                        ),
                        SizedBox(width: size.convertWidth(context, 35)),
                        Radio(value: null, groupValue: null, onChanged: null)
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
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
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddingAddress()));
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  width: size.convertWidth(context, 326),
                                  height: size.convert(context, 44),
                                  child: Text(
                                    text.addaddress,
                                    style: TextStyle(
                                        color: Color(0xff667EEA),
                                        fontSize: size.convert(context, 20)),
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: size.convert(context, 20)),
                      Center(
                          child: NewButton(
                        text: text.continuetopayment,
                        width: size.convertWidth(context, 326),
                      )),
                      SizedBox(height: size.convert(context, 15)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
