import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/compontent/background.dart';
import 'package:task/constant.dart';
import 'package:task/moudles/drawer/drawer.dart';
import 'package:task/moudles/home/component/button.dart';
import 'package:task/moudles/home/component/customButton.dart';
import 'package:task/moudles/home/component/icon.dart';
import 'package:task/moudles/home/component/logo.dart';

import '../../size_config.dart';
import 'component/registerButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: DrawerPage(),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            CustomPaint(painter: BackgroundPainter()),
            const MenuIcon(),
            const Logo(),
            const RegisterButton(),
            CustomButton(
              title: "About Us",
              topPosition: 395,
              leftPosition: 20,
              horizontalPadding: 25,
              verticalPadding: 36,
            ),
            CustomButton(
              title: "Contact",
              topPosition: 395,
              leftPosition: 215,
              horizontalPadding: 33,
              verticalPadding: 36,
            ),
            CustomButton(
              title: "Investment Guide",
              topPosition: 528,
              leftPosition: 20,
              horizontalPadding: 16,
              verticalPadding: 16,
            ),
            CustomButton(
              title: "Centers",
              topPosition: 528,
              leftPosition: 215,
              horizontalPadding: 33,
              verticalPadding: 36,
            ),
            ContButton(
                title: "Invite someone",
                ontap: () {},
                leftPosition: 20,
                topPosition: 696)
          ],
        ),
      ),
    );
  }
}
