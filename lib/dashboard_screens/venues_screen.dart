import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VenuesScreen extends StatelessWidget {
  const VenuesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List venuesPath = [
      'assets/images/Gaddafi_stadium_lahore.jpg',
      'assets/images/karachi_st.jpg',
      'assets/images/rawalpindi_stadium.jpeg'
    ];
    final List venuesName = [
      'Gaddafi Stadium',
      'Karachi Stadium',
      'Rawalpindi Stadium'
    ];
    // final List capacity=['','','',''];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "PSL's Venues",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: venuesName.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${venuesPath[index]}')),
                color: Color(0xffF1F2FF),
                border: Border.all(width: 2, color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 30.h,
                  width: 230.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xff7848E2), Color(0xff708DF4)]),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100.r),
                          bottomLeft: Radius.circular(100.r))),
                  child: Column(
                    children: [
                      Text(
                        '${index+1} ${venuesName[index]}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
