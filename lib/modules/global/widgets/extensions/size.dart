import 'package:flutter/material.dart';

extension SizeBuildContext on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
  double get bottom => MediaQuery.paddingOf(this).bottom;
  double get left => MediaQuery.paddingOf(this).left;
  double get right => MediaQuery.paddingOf(this).right;
  double get top => MediaQuery.paddingOf(this).top;
}
