import 'package:blocpractice/res/size_config.dart';
import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  Function onPressed;
  NewButton({this.width, this.height, this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? size.convert(context, 245),
        height: height ?? size.convert(context, 49),
        child: Center(
          child: Text(
            text ?? "Empty",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.convert(context, 16),
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Color(0xff667EEA), Color(0xff64B6FF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
