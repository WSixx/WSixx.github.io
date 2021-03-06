import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class BackgroundBubble extends StatelessWidget {
  final Widget child;

  BackgroundBubble({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //color: Color(0xff03016e),
        color: Colors.black87,
        backgroundBlendMode: BlendMode.plus,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 100,
        color: const Color(0x44fbf6f6),
        blur: 0.3,
        size: 0.02,
        speed: 0.39,
        offset: 0.25,
        blendMode: BlendMode.plus,
        variation1: 0.9,
        variation2: 0.07,
        variation3: 0.44,
        rotation: -0.25,
        child: child,
      ),
    );
  }
}
