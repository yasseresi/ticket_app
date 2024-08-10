




import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/screens/Home/widgets/text-style_fourth.dart';

import 'text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText, isColor: isColor,),
        const SizedBox(
          height: 5,
        ),
        TextStyleForth(text: bottomText, isColor:isColor),
        
      ],
    );
  }
}