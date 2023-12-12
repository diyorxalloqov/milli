import 'package:flutter/material.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';

class SpaceHeight extends StatelessWidget {
  final num? height;
  const SpaceHeight({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    if (height == null) {
      return SizedBox(height: context.height * 0.01);
    } else {
      return SizedBox(height: context.height * 0.01 + height!);
    }
  }
}

class SpaceWidth extends StatelessWidget {
  final num? width;
  const SpaceWidth({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    if (width == null) {
      return SizedBox(width: context.width * 0.02);
    } else {
      return SizedBox(width: context.width * 0.02 + width!);
    }
  }
}
