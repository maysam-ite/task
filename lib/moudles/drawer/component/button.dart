import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

import '../../../constant.dart';

class ContvButton extends StatelessWidget {
  String title;
  Function() ontap;
  ContvButton(
      {required this.title,
      required this.ontap,
      
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: getProportionateScreenHeight(52),
        width: getProportionateScreenWidth(194),
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
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
