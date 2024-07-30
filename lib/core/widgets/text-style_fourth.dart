
import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';

class TextStyleForth extends StatelessWidget {
  final String text;
  const TextStyleForth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
