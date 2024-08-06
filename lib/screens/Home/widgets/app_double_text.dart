import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';
import 'package:ticket_app_flutter/screens/Home/all_tickets.dart';

class AppDboubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  
  final VoidCallback func;
  

  const AppDboubleText({required this.bigText, required this.smallText, required this.func});

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
            style: AppStyles.headLineStyle3,
          ),
          InkWell(
            onTap:func,
            child: Text(
              smallText,
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
