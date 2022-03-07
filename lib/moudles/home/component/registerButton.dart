import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(247),
      left: getProportionateScreenWidth(88),
      child: Container(
        width: getProportionateScreenWidth(200),
        height: getProportionateScreenHeight(112),
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(63),
            vertical: getProportionateScreenHeight(44)),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: boxShadow,
              blurRadius: getProportionateScreenWidth(5),
              offset: Offset(
                getProportionateScreenWidth(3),
                getProportionateScreenHeight(5),
              ),
            )
          ],
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(8)),
          color: white,
        ),
        child: Text(
          "Register",
          style: TextStyle(
            color: nhd,
            fontSize: getProportionateScreenWidth(22),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
