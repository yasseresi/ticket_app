import 'package:flutter/material.dart';
import 'package:ticket_app_flutter/core/res/styles/app_styles.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor ;
  final int random;
  const AppLayoutBuilder({super.key, required this.random, this.isColor });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
  
      builder: (context, constraint) {
        return Flex(
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraint.constrainWidth() / random).floor(),
            (index) => SizedBox(
              width: 3,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: isColor == null ? Colors.white : Colors.blue),
              ),
            ),
          ),
        );
      },
    );
  }
}
