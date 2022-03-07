import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

import '../../../constant.dart';

class Lang extends StatefulWidget {
  const Lang({Key? key}) : super(key: key);

  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
  double margrnLeft = 5;
  double margenRieth = 20;
  String l = "E";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
  setState(() {
              if (margenRieth == 20) {
                margenRieth = 5;
                margrnLeft = 20;
                l = "A";
              } else {
                margenRieth = 20;
                margrnLeft = 5;
                l = "E";
              }
            });
      },
      child: Container(
        width: getProportionateScreenWidth(52),
        height: getProportionateScreenHeight(38),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 4,
            color: lang,
          ),
        ),
        //   alignment: Alignment.center,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.only(
            right: getProportionateScreenWidth(margenRieth),
            left: getProportionateScreenWidth(margrnLeft),
          ),
          width: getProportionateScreenHeight(22),
          height: getProportionateScreenHeight(22),
          decoration:
              const BoxDecoration(color: lang, shape: BoxShape.circle),
          alignment: Alignment.center,
          child:Text(
            l,
            style:const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
