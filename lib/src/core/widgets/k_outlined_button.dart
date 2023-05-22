import 'package:flutter/material.dart';
import 'package:flutter_theme_test/src/core/extensions/build_context_extension.dart';

class KOutlinedButton extends StatelessWidget {
  const KOutlinedButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.borderRadius,
    this.borderColor,
    this.bgColor,
    this.height,
    this.width,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget child;
  final double? borderRadius;
  final Color? borderColor;
  final Color? bgColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor ?? context.primaryColor,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      color: bgColor,
      height: height ?? 42,
      minWidth: width ?? context.screenWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      elevation: 0,
      child: child,
    );
  }
}
