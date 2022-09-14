import 'package:flutter/material.dart';

class RoundedFlatTextButton extends StatelessWidget {
  const RoundedFlatTextButton({
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.primary = Colors.white,
    required this.child,
    Key? key,
  }) : super(key: key);
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? primary;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: backgroundColor,
        primary: primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: Container(
        height: 48.0,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
