import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/size_config.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(15.75),
      left: getProportionateScreenWidth(138),
      child: Container(
        width: getProportionateScreenWidth(135.34),
        height: getProportionateScreenHeight(124.4),
        child: SvgPicture.asset("asset/icons/logo.svg"),
      ),
    );
  }
}
