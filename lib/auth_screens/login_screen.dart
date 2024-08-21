import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/auth_screens/forgoat_screen.dart';
import 'package:psl_app/auth_screens/signup_screen.dart';
import 'package:psl_app/custom_widgets/auth_backgroun_image.dart';
import 'package:psl_app/custom_widgets/custom_login_signup_btn.dart';
import 'package:psl_app/user_home_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        child: AuthBackgroundImage(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    height: 200.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(0.15),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/groupIcons/psl_logo_icon.png'))),
                  ),
                ),
               SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Welcome to\nHPL Psl',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: ('Email or Phone'),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.text,style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintText: ('Your Password'),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                    ),
                  ),
                ),
               SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //navigate to forgot screen
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return ForgoatScreen();
                          }));
                        },
                        child: Text(
                          'Forgoat Password!',
                          style:
                              TextStyle(color: Color(0xff7091F5), fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                // custom botton
                CustomLoginSignupBtn(
                    btnName: 'LogIn',
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return UserHomeScreen();
                      }));
                    }),
               SizedBox(
                  height: 10.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",style: TextStyle(color:Colors.black),),
                    SizedBox(
                      width: 2.w,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const SignUpScreen();
                          }));
                        },
                        child: const Text(
                          'Sign up',
                          style:
                              TextStyle(color: Color(0xff7091F5), fontSize: 16),
                        )),
                  ],
                )
              ],
            ),
          ),
        )),
      )),
    );
  }
}
