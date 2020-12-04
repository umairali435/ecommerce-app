import 'package:blocpractice/menu.dart';
import 'package:blocpractice/res/button.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                    height: size.convert(context, 238),
                    width: size.convertWidth(context, 238),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff8f8f8)),
                    child: Container(
                      height: size.convert(context, 154),
                      width: size.convert(context, 154),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffEEEEEE),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/images/confirmation.svg",
                          height: size.convert(context, 47),
                          width: size.convert(context, 48),
                        ),
                      ),
                    )),
              ),
              flex: 6,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    text.confirmation,
                    style: TextStyle(
                        fontFamily: text.fontfaimly,
                        color: Color(0xff434343),
                        fontSize: size.convert(context, 30)),
                  ),
                  Text(
                    text.success,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: text.fontfaimlyregular,
                        fontSize: size.convert(context, 14),
                        color: Color(0xff656565)),
                  ),
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Center(
                  child: NewButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Menu()));
                },
                text: text.backtohom,
              )),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
