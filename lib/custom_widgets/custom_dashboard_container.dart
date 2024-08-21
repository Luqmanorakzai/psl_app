import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDashboardContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;
  const CustomDashboardContainer({super.key, required this.imagePath, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.w,
        height: 140.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            gradient:const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff793FDF),Color(0xff45359C)]
            ),
            boxShadow: [
              BoxShadow(color: Colors.grey,blurRadius: 3.r)
            ]
        ),
        child: Column(
          children: [
            Image.asset(imagePath,color: Colors.white,
              height: 80.h,
              width: 80.w,
            ),
            Text(title,style: TextStyle(fontSize: 25.sp, color: Colors.white),),
            Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
