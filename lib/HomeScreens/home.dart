import 'package:blocpractice/HomeScreens/featuredscreen.dart';
import 'package:blocpractice/extera.dart';
import 'package:blocpractice/res/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blocpractice/Text/Alltext.dart' as text;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
              SizedBox(height: size.convert(context, 15)),
              CustomAppBar(context: context, text: text.appname),
              SizedBox(height: size.convert(context, 15)),
              Expanded(
                child: Container(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: size.convert(context, 52),
                          width: size.convert(context, 343),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  color: Color(0xffEFEFEF),
                                  offset: Offset(0, 13)),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0xff818181),
                              ),
                              Container(
                                color: Color(0xff707070),
                                height: size.convert(context, 24),
                                width: size.convert(context, 1),
                              ),
                              Container(
                                width: size.convert(context, 252),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: text.hometextfieldhint,
                                    hintStyle: TextStyle(
                                        color: Color(0xff818181),
                                        fontSize: size.convert(context, 18)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.convert(context, 20),
                      ),
                      Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    text.categoriestext,
                                    style: TextStyle(
                                      fontFamily: "MontserratMedium",
                                      color: Color(0xff434343),
                                      fontSize: size.convert(context, 22),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      text.seeall,
                                      style: TextStyle(
                                        color: Color(0xff656565),
                                        fontSize: size.convert(context, 15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: size.convert(context, 10),
                              ),
                              Container(
                                height: size.convert(context, 65),
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    UpperContainer(context, Color(0xff667eea),
                                        Color(0xff64b6ff), "Women"),
                                    SizedBox(
                                      width: size.convert(context, 20),
                                    ),
                                    UpperContainer(context, Color(0xffff5858),
                                        Color(0xfffb5895), "men"),
                                    SizedBox(
                                      width: size.convert(context, 20),
                                    ),
                                    UpperContainer(context, Color(0xff7990dd),
                                        Color(0xff7990dd), "kids"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          height: size.convert(context, 115),
                          width: size.convert(context, 372)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text.featured,
                            style: TextStyle(
                              color: Color(0xff434343),
                              fontSize: size.convert(context, 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        FeaturedScreen()));
                              },
                              child: Text(
                                text.seeall,
                                style: TextStyle(
                                  color: Color(0xff656565),
                                  fontSize: size.convert(context, 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.convert(context, 30),
                      ),
                      Container(
                        height: size.convert(context, 250),
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/images/first.jpg",
                                    width: size.convert(context, 150),
                                    height: size.convert(context, 180),
                                  ),
                                ),
                                Text(
                                  "${55.00}",
                                  style: TextStyle(
                                    fontSize: size.convert(context, 16),
                                  ),
                                ),
                                Text(
                                  "Woman T-Shirt",
                                  style: TextStyle(
                                      fontSize: size.convert(context, 16)),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/first.jpg",
                                  width: size.convert(context, 150),
                                  height: size.convert(context, 180),
                                ),
                                Text(
                                  "${55.00}",
                                  style: TextStyle(
                                    fontSize: size.convert(context, 16),
                                  ),
                                ),
                                Text(
                                  "Woman T-Shirt",
                                  style: TextStyle(
                                      fontSize: size.convert(context, 16)),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/first.jpg",
                                  width: size.convert(context, 150),
                                  height: size.convert(context, 180),
                                ),
                                Text(
                                  "${55.00}",
                                  style: TextStyle(
                                    fontSize: size.convert(context, 16),
                                  ),
                                ),
                                Text(
                                  "Woman T-Shirt",
                                  style: TextStyle(
                                      fontSize: size.convert(context, 16)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
