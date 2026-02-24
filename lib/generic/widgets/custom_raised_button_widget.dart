import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double borderRadius;
  final double height;
  final double? elevation;
  final VoidCallback? onPressed;

  const CustomRaisedButton({
    super.key,
    this.child,
    this.color,
    this.borderRadius = 2.0,
    this.height = 50.0,
    this.elevation,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: elevation,
          disabledForegroundColor: color!.withOpacity(0.38),
          disabledBackgroundColor:
              color!.withOpacity(0.12), //disabledColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
