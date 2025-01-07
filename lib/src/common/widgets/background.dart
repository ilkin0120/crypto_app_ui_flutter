import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final double sigma;

  const Background({super.key, required this.child, this.sigma = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(10, 8, 9, 1),
      width: double.infinity,
      child: Stack(
        children: [
          _circle(
              bottom: null,
              right: -100,
              top: -100,
              left: null,
              width: 300,
              height: 300,
              color: const Color.fromRGBO(147, 116, 88, 0.8)),
          _circle(
              bottom: null,
              width: 250,
              height: 250,
              right: -100,
              top: 100,
              left: null,
              color: const Color.fromRGBO(133, 69, 143, 1)),
          Blur(
            blur: sigma,
            blurColor: const Color.fromRGBO(10, 8, 9, 0.9),
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: child,
          )
        ],
      ),
    );
  }

  Widget _circle(
      {required Color color,
      required double width,
      required double height,
      double? bottom,
      double? top,
      double? left,
      double? right}) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      bottom: bottom,
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        width: width,
        height: height,
      ),
    );
  }
}
