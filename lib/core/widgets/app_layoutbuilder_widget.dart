import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int random;

  const AppLayoutBuilder({super.key, required this.random });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
  
      builder: (context, constraint) {
        return Flex(
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraint.constrainWidth() / random).floor(),
            (index) => const SizedBox(
              width: 3,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
