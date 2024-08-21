import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/auth_screens/login_screen.dart';
import 'package:psl_app/custom_widgets/custom_next_btn.dart';
import 'package:psl_app/custom_widgets/custom_text_btn.dart';

class IntroScreenTwo extends StatelessWidget {
  const IntroScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: double.infinity.h,
                width: double.infinity.w,
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
              Positioned(
                right: 330,
                bottom: 150,
                child: Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.25),
                      shape: BoxShape.circle),
                ),
              ),
              Positioned (
                top: 50,
                left: 50,
                child: Container(
                  height: 250.h,
                  width: 250.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/groupIcons/hblpsl-removebg-preview.png'),
                      )),
                ),
              ),
              Positioned(
                top: 300,
                left: 70,
                child: Column(
                  children: [
                    Text(
                      'PSL Details',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        'Managing Paksitan Super League\nWith Live Score & Highlights ')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Center(
                    child: Image.asset('assets/images/groupIcons/Group 1.png')),
              ),
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
                      width: 130,
                    ),
                    CustomNextBotton(btnName: 'Next', onTap: () {

                    })
                  ],
                ),
              )
            ],
          )),
    );
  }
}
