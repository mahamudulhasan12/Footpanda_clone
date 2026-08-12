import 'package:flutter/material.dart';

class AppContinner extends StatelessWidget {
  const AppContinner({
    super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.boxBorder,
    this.boxShape,
    this.colors,
    this.pading, this.child, this.image, this.alignment,
  });
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? boxBorder;
  final BoxShape? boxShape;
  final Color? colors;
  final EdgeInsetsGeometry? pading;
  final DecorationImage ? image;
  final AlignmentGeometry ? alignment;
  @override
  final Widget ? child;
  Widget build(BuildContext context) {
    return Container(
      padding: pading,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        border: boxBorder,
        shape: boxShape ?? BoxShape.rectangle,
        color: colors,
        image: image
      ),
      child: child,
    );
  }
}
