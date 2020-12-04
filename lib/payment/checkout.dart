import 'package:blocpractice/confirmation/confirmation.dart';
import 'package:blocpractice/res/button.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            left: 15.0,
            right: 15.0,
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
                text.checkout,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: text.fontfaimlyregular,
                  fontSize: size.convert(context, 30),
                ),
              ),
              CartCard(context, false),
              CartCard(context, false),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              totaling(context),
              Center(
                  child: NewButton(
                text: "Buy",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Confirmation()));
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
