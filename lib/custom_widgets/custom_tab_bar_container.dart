import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBarContainer extends StatelessWidget {
  final VoidCallback ontap;
  final Widget child;

  const CustomTabBarContainer({
    super.key,
    required this.child,
    required this.ontap,
  });

  final isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          GestureDetector(
            onTap: ontap,
            child: Container(
                height: 100.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                    color: isSelected == 0 ? Colors.white : Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xff793FDF), Color(0xff45359C)])),
                  child: child,
                )),
          ),
        ],
      ),
    );
  }
}
