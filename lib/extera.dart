import 'package:blocpractice/res/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'res/size_config.dart';
import 'Text/Alltext.dart';
import 'Text/Alltext.dart' as text;
import 'res/color.dart';

Column TextAndTextField(
    {String text, context, bool obscuretext = false, SvgPicture icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$text",
        style: TextStyle(
          fontSize: size.convert(context, 14),
          color: Color(0xffA6A6A6),
        ),
      ),
      TextFormField(
        obscureText: obscuretext,
      ),
    ],
  );
}

Container UpperContainer(
    context, Color firstcolor, Color secondColor, String text) {
  return Container(
    height: size.convert(context, 65),
    width: size.convert(context, 114),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [firstcolor, secondColor],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
    ),
    child: Center(
      child: Text(
        "$text",
        style:
            TextStyle(color: Colors.white, fontSize: size.convert(context, 14)),
      ),
    ),
  );
}

Row CustomAppBar({context, text, String image}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SvgPicture.asset(
        image ?? "assets/images/appbarfirsticon.svg",
        height: size.convert(context, 16),
        width: size.convert(context, 20),
        color: image != null ? Colors.black : null,
      ),
      Text(
        "Bolt",
        style: TextStyle(
          fontFamily: fontfaimlyregular,
          fontSize: size.convert(context, 25),
          fontWeight: FontWeight.w600,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: SvgPicture.asset(
          "assets/images/appbarthirdicon.svg",
          height: size.convert(context, 20),
          width: size.convert(context, 20),
        ),
      ),
    ],
  );
}

Column ShoppingPictures(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset(
        "assets/images/first.jpg",
        width: size.convertWidth(context, 150),
        height: size.convert(context, 180),
      ),
      SizedBox(height: size.convert(context, 3)),
      Text(
        "${55.00}",
        style: TextStyle(
          fontSize: size.convert(context, 16),
          fontFamily: fontfaimlyregular,
        ),
      ),
      SizedBox(height: size.convert(context, 3)),
      Text(
        "Woman T-Shirt",
        style: TextStyle(
            fontSize: size.convert(context, 16), fontFamily: fontfaimlyregular),
      ),
      SizedBox(height: size.convert(context, 15)),
    ],
  );
}

Container SizeContainer({context, String text, Color color, Color textcolor}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(size.convert(context, 5)),
    ),
    width: size.convert(context, 50),
    height: size.convert(context, 50),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: textcolor),
      ),
    ),
  );
}

CartCard(context, bool isfalse) {
  return Center(
    child: Card(
      child: Container(
        height: size.convert(context, 138),
        width: size.convertWidth(context, 326),
        child: Row(
          children: [
            SizedBox(width: size.convert(context, 10)),
            Container(
                height: size.convert(context, 104),
                width: size.convertWidth(context, 100),
                child: Image.asset("assets/images/t.jpg")),
            SizedBox(width: size.convert(context, 14)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text.tshirt,
                  style: TextStyle(
                    fontSize: size.convert(context, 16),
                  ),
                ),
                Text(
                  text.companyname,
                  style: TextStyle(
                    fontSize: size.convert(context, 16),
                  ),
                ),
                Text(
                  text.price,
                  style: TextStyle(
                    fontSize: size.convert(context, 16),
                    color: Color(0xff374ABE),
                  ),
                ),
                isfalse
                    ? NewButton(
                        width: size.convert(context, 114),
                        text: "Order Again",
                        height: size.convert(context, 39),
                      )
                    : Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "-",
                              style: TextStyle(
                                  color: Color(0xff565656),
                                  fontSize: size.convert(context, 30)),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                color: Color(0xff565656),
                              ),
                            ),
                            Text(
                              "+",
                              style: TextStyle(
                                color: Color(0xff565656),
                              ),
                            ),
                          ],
                        ),
                        color: Color(0xffF6F6F6),
                        width: size.convertWidth(context, 114),
                        height: size.convert(context, 42),
                      ),
              ],
            ),
            Container(
              width: size.convert(context, 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.cancel_presentation_sharp,
                    color: Color(0xff979797),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

textStlylefirst(context) {
  return TextStyle(
    color: Color(0xff919191),
    fontSize: size.convert(context, 18),
  );
}

textStlyleSecond(context) {
  return TextStyle(
    color: Color(0xff434343),
    fontSize: size.convert(context, 18),
  );
}

totaling(context) {
  return Container(
    margin: EdgeInsets.only(
      right: 15.0,
    ),
    child: Column(
      children: [
        SizedBox(height: size.convert(context, 15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text.subtotal,
              style: textStlylefirst(context),
            ),
            Text(
              text.onesixty,
              style: textStlyleSecond(context),
            ),
          ],
        ),
        SizedBox(height: size.convert(context, 15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text.discount,
              style: textStlylefirst(context),
            ),
            Text(
              text.five,
              style: textStlyleSecond(context),
            ),
          ],
        ),
        SizedBox(height: size.convert(context, 15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text.shipping,
              style: textStlylefirst(context),
            ),
            Text(
              text.ten,
              style: textStlyleSecond(context),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text.total,
              style: textStlyleSecond(context),
            ),
            Text(
              text.onesixtytwo,
              style: textStlyleSecond(context),
            ),
          ],
        ),
      ],
    ),
  );
}

bool lightmode = false;
Text menutext(String text, context) {
  return Text(
    text,
    style: TextStyle(
      color: lightmode ? colorwhite : colorblack,
      fontSize: size.convert(context, 24),
    ),
  );
}
