import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

import '../../../constant.dart';

class EndText extends StatelessWidget {
  const EndText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(209),
     // height: getProportionateScreenHeight(62),
      child: Text(
        "Copyright © 2021 NetFarmy \n    All right reserved.",
      //  maxLines: 2,
        style:  TextStyle(
          color: textCol,
          fontSize: getProportionateScreenHeight(15),
        
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}