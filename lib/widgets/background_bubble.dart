import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class BackgroundBubble extends StatelessWidget {
  const BackgroundBubble({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff010329),
            Color(0xff010047),
          ],
          stops: [
            0,
            1,
          ],
        ),
        backgroundBlendMode: BlendMode.plus,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.bubbles,
        particles: 89,
        color: Color(0x44ffffff),
        blur: 0.24,
        size: 0.02,
        speed: 1.58,
        offset: 0,
        blendMode: BlendMode.plus,
        variation1: 0.36,
        variation2: 0.1,
        variation3: 0,
        rotation: 0.04,
      ),
    );
  }
}
