import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/auth_screens/auth_login/login_screen.dart';
import 'package:psl_app/custom_widgets/custom_next_btn.dart';
import 'package:psl_app/custom_widgets/custom_text_btn.dart';
import 'package:psl_app/intro_screens/intro_screen_2.dart';

class IntroScreenOne extends StatelessWidget {
  const IntroScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            // height: 300,
            // width: 500,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                    colors: [Color(0xE6ECFDE6ECFD), Color(0xffDADAFA)])),
          ),
          Positioned(
            right: 270,
            top: -70,
            child: Container(
              height: 120.h,
              width: 200.w,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.25),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            left: 270,
            bottom: -130,
            child: Container(
              height: 200.h,
              width: 200.h,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.25),
                  shape: BoxShape.circle),
            ),
          ),
          Container(
            height: 250.h,
            width: 400.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/pslIcon-removebg-preview.png'),
            )),
          ),
         Positioned(
            top: 300,
            left: 50,
            child: Column(
              children: [
                Text(
                  'A Single Cloud Space',
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500,color: Colors.black),
                ),
                Text(
                    textAlign: TextAlign.center,
                    'In this space cloud a single platform for\nmanaging all PSL for user',style: TextStyle(color: Colors.black),)
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 250),
          //   child: Center(
          //       child: Image.asset('assets/images/groupIcons/Group 1.png')),
          // ),
          Positioned(
            top: 550,
            left: 30,
            child: Row(
              children: [
                CustomTextBtn(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return LogInScreen();
                  }));
                }),
                SizedBox(
                  width: 130.w,
                ),
                CustomNextBotton(btnName: 'Next', onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return IntroScreenTwo();
                  }));

                })
              ],
            ),
          )
        ],
      )),
    );
  }
}
