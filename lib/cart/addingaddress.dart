import 'package:blocpractice/payment/payment.dart';
import 'package:blocpractice/res/button.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;

class AddingAddress extends StatelessWidget {
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
                text.createaddress,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: text.fontfaimlyregular,
                  fontSize: size.convert(context, 30),
                ),
              ),
              SizedBox(height: size.convert(context, 15)),
              Text(
                text.name,
                style: textStlylefirst(context),
              ),
              Text(text.usernmae, style: textStlyleSecond(context)),
              SizedBox(height: size.convert(context, 15)),
              Text(
                text.address,
                style: textStlylefirst(context),
              ),
              Text(text.addresstext, style: textStlyleSecond(context)),
              SizedBox(height: size.convert(context, 15)),
              Text(
                text.cit,
                style: textStlylefirst(context),
              ),
              Text(text.secondaddress, style: textStlyleSecond(context)),
              SizedBox(height: size.convert(context, 15)),
              Text(
                text.postalcode,
                style: textStlylefirst(context),
              ),
              Text(text.code, style: textStlyleSecond(context)),
              SizedBox(height: size.convert(context, 15)),
              Text(
                text.phonenumber,
                style: textStlylefirst(context),
              ),
              Text(text.number, style: textStlyleSecond(context)),
              Expanded(
                  child: Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: NewButton(
                    text: "Add Address",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Payment()));
                    },
                  ),
                ),
              )),
              SizedBox(height: size.convert(context, 15)),
            ],
          ),
        ),
      ),
    );
  }
}
