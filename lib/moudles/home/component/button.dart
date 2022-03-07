import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

import '../../../constant.dart';

class ContButton extends StatelessWidget {
  String title;
  double leftPosition;
  Function() ontap;
  double topPosition;
  ContButton(
      {required this.title,
      required this.ontap,
      required this.leftPosition,
      required this.topPosition});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(topPosition),
      left: getProportionateScreenWidth(leftPosition),
      child: InkWell(
        onTap: ontap,
        child: Container(
          alignment: Alignment.center,
          height: getProportionateScreenHeight(56),
          width: getProportionateScreenWidth(335),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFFB378D7),
                blurRadius: getProportionateScreenWidth(15),
                offset: Offset(
                  0,
                  getProportionateScreenHeight(10),
                ),
              ),
            ],
            color: nhd,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
