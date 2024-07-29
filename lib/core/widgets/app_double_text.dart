import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';

class AppDboubleText extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDboubleText({required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyle.headLineStyle3,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              smallText,
              style: AppStyle.textStyle,
            ),
          )
        ],
      ),
    );
  }
}
