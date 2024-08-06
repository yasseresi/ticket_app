import 'package:flutter/material.dart';


class BigCircle extends StatelessWidget {
  final bool isTrue;
  final bool? isColor;

  const BigCircle({
    required this.isTrue, this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:isColor== null ? Colors.white : Colors.grey.shade200,
          borderRadius: isTrue
              ?  const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))
              :  const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
        ),
      ),
    );
  }
}
