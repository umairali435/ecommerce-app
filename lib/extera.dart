import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'res/size_config.dart';
import 'Text/Alltext.dart';

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

Row CustomAppBar({context, text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SvgPicture.asset(
        "assets/images/appbarfirsticon.svg",
        height: size.convert(context, 16),
        width: size.convert(context, 20),
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
