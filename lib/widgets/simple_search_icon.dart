import 'package:flutter/material.dart';

class SimpleSearchIcon extends StatelessWidget {
  const SimpleSearchIcon({super.key, required this.icon, this.onPressed});
  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:  const Color.fromRGBO(255, 255, 255, 0.05),
      ),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
