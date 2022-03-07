import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

class ImageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(119),
      height: getProportionateScreenHeight(119),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("asset/image/w.png"),
          fit: BoxFit.fill,
          alignment: Alignment.center,
        ),
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFf000029),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
