import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/custom_widgets/auth_backgroun_image.dart';
import 'package:psl_app/custom_widgets/custom_login_signup_btn.dart';
import '../custom_widgets/custom_back_arrwo.dart';
import 'change_password_screen.dart';

class ForgoatScreen extends StatelessWidget {
  const ForgoatScreen({super.key});

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
                  height: 10,
                ),
                Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/groupIcons/forgoatIcon.png')),
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
                        'Forgoat\nPassword',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: 'Old contact number',
                      prefixIcon: Icon(Icons.phone)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text('or'),
                Divider(
                  height: 2.h,
                  color: Color(0xff793FDF),
                  endIndent: 160,
                  indent: 160,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      hintText: '@Email address',
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomLoginSignupBtn(
                    btnName: 'Send Verification Code',
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return ChangePasswordScreen();
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
