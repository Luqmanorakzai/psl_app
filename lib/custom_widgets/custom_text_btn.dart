
import 'package:flutter/material.dart';

class CustomTextBtn extends StatelessWidget {
 final VoidCallback onTap;
  const CustomTextBtn({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Text('Skip for Now'));
  }
}
