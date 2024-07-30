import 'package:flutter/material.dart';


class BigCircle extends StatelessWidget {
  final bool isTrue;

  const BigCircle({
    required this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
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
