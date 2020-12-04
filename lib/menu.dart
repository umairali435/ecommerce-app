import 'package:blocpractice/Profile/myorders.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:flutter/material.dart';
import 'Text/Alltext.dart' as text;
import 'res/color.dart';
import 'extera.dart' as checking;

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: checking.lightmode ? colorblack : colorwhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: checking.lightmode ? colorblack : colorwhite,
        actions: [
          Switch(
              value: checking.lightmode,
              onChanged: (value) {
                setState(() {
                  checking.lightmode = value;
                });
              })
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.convert(context, 356),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  menutext(text.home, context),
                  menutext(text.profile, context),
                  menutext(text.mycart, context),
                  menutext(text.favourite, context),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => MyOrders()));
                      },
                      child: menutext(text.myorders, context)),
                  menutext(text.settings, context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
