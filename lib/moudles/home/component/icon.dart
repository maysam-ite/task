import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

import '../../../constant.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
          top: getProportionateScreenHeight(104),
          left: getProportionateScreenWidth(20),
          child: GestureDetector(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.menu,
              size: 30,
              color: white,
            ),
          ),
        );
  }
}