import 'package:flutter/material.dart';
class CustomBackArro extends StatelessWidget {
  final VoidCallback onTap;
  const CustomBackArro({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 70,
        decoration: BoxDecoration(
          color: Color(0xff793FDF),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(Icons.arrow_back,color: Colors.white,),
      ),
    );
  }
}
