import 'package:flutter/material.dart';

import 'package:task/size_config.dart';

import '../../../constant.dart';

class CustomButton extends StatelessWidget {
  String title;
  double topPosition;
  double leftPosition;
  double horizontalPadding;
  double verticalPadding;
  CustomButton(
      {required this.title,
      required this.topPosition,
      required this.leftPosition,
      required this.horizontalPadding,
      required this.verticalPadding});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(topPosition),
      left: getProportionateScreenWidth(leftPosition),
      child: Container(
        width: getProportionateScreenWidth(140),
        height: getProportionateScreenHeight(97),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(horizontalPadding),
          vertical: getProportionateScreenHeight(verticalPadding),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: boxShadow,
              blurRadius: getProportionateScreenWidth(5),
              offset: Offset(
                getProportionateScreenWidth(3),
                getProportionateScreenHeight(5),
              ),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
          color: white,
        ),
        child: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.clip,
          style: TextStyle(
            color: nhd,
            fontSize: getProportionateScreenWidth(20),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
