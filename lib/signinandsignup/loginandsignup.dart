import 'package:blocpractice/HomeScreens/home.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;
import 'package:blocpractice/res/button.dart';

class LoginScreen extends StatelessWidget {
  final bool issignup;
  LoginScreen({this.issignup = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(size.convert(context, 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/images/backbutton.svg"),
                  SizedBox(
                    height: size.convert(context, 10),
                  ),
                  Text(
                    issignup ? text.signuptext : text.logintext,
                    style: TextStyle(
                      fontSize: size.convert(context, 30),
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 50),
                  ),
                  issignup
                      ? TextAndTextField(
                          text: text.nametext,
                          context: context,
                        )
                      : Container(),
                  issignup
                      ? SizedBox(
                          height: size.convert(context, 60),
                        )
                      : Container(),
                  TextAndTextField(
                    text: text.emailtext,
                    context: context,
                  ),
                  SizedBox(
                    height: size.convert(context, 50),
                  ),
                  TextAndTextField(
                    text: text.passwordtext,
                    obscuretext: true,
                    icon: SvgPicture.asset("assets/images/eye.svg"),
                    context: context,
                  ),
                  SizedBox(
                    height: size.convert(context, 60),
                  ),
                  Center(
                    child: NewButton(
                      text: issignup ? text.signuptext : text.logintext,
                      height: size.convert(context, 48),
                      width: size.convert(context, 315),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Home()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 20),
                  ),
                  Center(
                    child: Text(
                      issignup
                          ? text.haveaccountsignin
                          : text.donthaveaccounttext,
                      style: TextStyle(
                        fontSize: size.convert(context, 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
