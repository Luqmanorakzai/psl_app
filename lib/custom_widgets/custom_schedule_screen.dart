import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScheduleScreen extends StatelessWidget {
  final String matchNum;
  final String matchDate;
  final String imgPathOne;
  final String imgPathTwo;
  final String teamOne;
  final String teamTwo;
  final String stodiumName;
  const CustomScheduleScreen(
      {super.key,
      required this.matchNum,
      required this.matchDate,
      required this.imgPathOne,
      required this.imgPathTwo,
      required this.teamOne,
      required this.teamTwo,
      required this.stodiumName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
          color: Color(0xffF1F2FF),
          border: Border.all(color: Colors.grey, width: 1.w),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff708DF4), Color(0xff7848E2)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        matchNum,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      ),
                      Text(
                        matchDate,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('HBL PAKISTAN SUPER LEAGUE',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp)),
                    ),
                    Image.asset(
                        height: 60.h,
                        width: 70.w,
                        'assets/images/groupIcons/hblpsl-removebg-preview.png')
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(height: 100.h, width: 100.w, imgPathOne),
              Text(
                teamOne,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
              Image.asset(
                  height: 100,
                  width: 100,
                  'assets/images/groupIcons/Combat-Versus-PNG-Download-Image 1.png'),
              Text(
                teamTwo,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
              Image.asset(height: 100.h, width: 100.w, imgPathTwo),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
              child: Text(
            stodiumName,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
          )),
        ],
      ),
    );
  }
}
