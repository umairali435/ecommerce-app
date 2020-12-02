import 'package:blocpractice/res/button.dart';
import 'package:blocpractice/signinandsignup/loginandsignup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'res/size_config.dart';

class OnSelectingSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.convert(context, 30),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "Welcome to Bolt",
                      style: TextStyle(
                        fontSize: size.convert(context, 20),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Explore Us",
                      style: TextStyle(
                        fontSize: size.convert(context, 18),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: SvgPicture.asset("assets/Background.svg"),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NewButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                      },
                      text: "Log in",
                    ),
                    SizedBox(
                      height: size.convert(context, 10),
                    ),
                    NewButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen(
                                  issignup: true,
                                )));
                      },
                      text: "Signup",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
