import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/constant.dart';
import 'package:task/moudles/drawer/component/button.dart';
import 'package:task/moudles/drawer/component/costumtext.dart';
import 'package:task/moudles/drawer/component/endtext.dart';
import 'package:task/moudles/drawer/component/imagedrawer.dart';
import 'package:task/moudles/drawer/component/langSwitch.dart';
import 'package:task/moudles/home/component/button.dart';
import 'package:task/size_config.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: getProportionateScreenWidth(295),
        decoration: drawerDecoration,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(70),
              ),
              ImageDrawer(),
              SizedBox(height: getProportionateScreenHeight(45)),
              CustomText(title: "Profile", topPosition: 234, leftPosition: 111),
              SizedBox(height: getProportionateScreenHeight(32)),
              CustomText(
                  title: "Privacy policy", topPosition: 290, leftPosition: 73),
              SizedBox(height: getProportionateScreenHeight(32)),
              CustomText(title: "Terms", topPosition: 346, leftPosition: 111),
              SizedBox(height: getProportionateScreenHeight(29)),
              const Lang(),
              SizedBox(height: getProportionateScreenHeight(29)),
              CustomText(title: "Mode", topPosition: 458, leftPosition: 111),
              SizedBox(height: getProportionateScreenHeight(32)),
              ContvButton(
                  title: "Logout",
                  ontap: () {},
                  ),
              SizedBox(height: getProportionateScreenHeight(100)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:const [
                   EndText(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*

  
 */