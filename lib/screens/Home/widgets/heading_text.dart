import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final bool? isColor;
  const HeadingText({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // ignore: unnecessary_null_comparison
      style: isColor == null ? AppStyles.headLineStyle1 : AppStyles.headLineStyle2,
    );
  }
}