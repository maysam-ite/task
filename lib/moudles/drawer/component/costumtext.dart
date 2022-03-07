import 'package:flutter/material.dart';
import 'package:task/size_config.dart';

import '../../../constant.dart';

class CustomText extends StatelessWidget {
  String title;
  double topPosition;
  double leftPosition;
  CustomText({
    required this.title,
    required this.topPosition,
    required this.leftPosition,
  });
  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(
         color: textCol,
         fontSize: 22,
         fontWeight: FontWeight.bold,
         overflow: TextOverflow.visible
       ),
       textAlign: TextAlign.center,
     );
  }
}