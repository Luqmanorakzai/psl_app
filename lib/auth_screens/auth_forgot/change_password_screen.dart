import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/auth_backgroun_image.dart';
import '../../custom_widgets/custom_back_arrwo.dart';
import '../../custom_widgets/custom_login_signup_btn.dart';
import '../auth_login/login_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250, top: 50),
                  child: CustomBackArro(onTap: () {
                    Navigator.pop(context);
                  }),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/groupIcons/changePI.png')),
                    shape: BoxShape.circle,
                    color: Color(0xff793FDF).withOpacity(.25),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Change your\n  Password',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: 'Contact number',
                      prefixIcon: Icon(Icons.phone)),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      hintText: '@email address',
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'New Password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomLoginSignupBtn(
                    btnName: 'Save changes',
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return LogInScreen();
                      }));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
