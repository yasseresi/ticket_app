
import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';

class TextStyleForth extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleForth({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4.copyWith(color: Colors.grey),
    );
  }
}
