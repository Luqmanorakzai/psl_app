import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarForUser extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  const CustomAppBarForUser({super.key, required this.title,});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(10),
      //     bottomRight: Radius.circular(10)
      //   )
      // ),
      backgroundColor: Colors.deepPurpleAccent,
      leading: Padding(
        padding: EdgeInsets.only(left: 10),
        child:Stack(
          clipBehavior: Clip.none,
          children: [
          Container(
            height: 70.h,
            width: 70.w,
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle),
          ),
          Positioned(
            top: 35,
            left: 30,
            child: Icon(
              size: 16.sp,
              Icons.camera_alt,color: Colors.redAccent,),
          )
        ],)
      ),
      title: Text(title,style: TextStyle(color: Colors.white),),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            color: Colors.white,
            Icons.login_outlined),
        )],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65.h);
}
