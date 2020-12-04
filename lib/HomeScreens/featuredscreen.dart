import 'package:blocpractice/HomeScreens/detailsScreen.dart';
import 'package:blocpractice/extera.dart';
import 'package:flutter/material.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;
import 'package:blocpractice/res/size_config.dart';

class FeaturedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.convert(context, 15)),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CustomAppBar(context: context, text: text.appname),
              ),
              SizedBox(height: size.convert(context, 15)),
              Text(
                "Featured",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: text.fontfaimlyregular,
                  fontSize: size.convert(context, 30),
                ),
              ),
              SizedBox(height: size.convert(context, 10)),
              Expanded(
                  child: Container(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DetailsScreen(false)));
                            },
                            child: ShoppingPictures(context)),
                        ShoppingPictures(context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ShoppingPictures(context),
                        ShoppingPictures(context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ShoppingPictures(context),
                        ShoppingPictures(context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ShoppingPictures(context),
                        ShoppingPictures(context),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
