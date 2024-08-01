import 'package:flutter/material.dart';

class CustomLoginSignupBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  const CustomLoginSignupBtn({super.key, required this.btnName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient:const LinearGradient(
                  begin: Alignment.centerLeft,
                  colors: [Color(0xff7091F5),Color(0xff793FDF)]
              )
          ),
          child: Center(child: Text(btnName,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)),
        ),
      ),
    );
  }
}
