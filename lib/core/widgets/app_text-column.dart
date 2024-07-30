import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/widgets/text-style_fourth.dart';
import 'package:ticket_app_flutter/core/widgets/text_style_third.dart';



class AppTextColumn extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppTextColumn({super.key, required this.topText, required this.bottomText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:alignment ,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(height: 5,),
        TextStyleForth(text: bottomText)
      ],
    );
  }
}