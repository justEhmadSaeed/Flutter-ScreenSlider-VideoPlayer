import 'package:flutter/material.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer(
      {Key? key, this.color = const Color(0xFFFF0000), this.child})
      : super(key: key);

  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: child);
  }
}
