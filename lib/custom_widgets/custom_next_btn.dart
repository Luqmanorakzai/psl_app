import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNextBotton extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  const CustomNextBotton(
      {super.key, required this.btnName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 90.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                colors: [Color(0xff7091F5), Color(0xff793FDF)])),
        child: Center(
            child: Text(
          btnName,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 18.sp,),
        )),
      ),
    );
  }
}
