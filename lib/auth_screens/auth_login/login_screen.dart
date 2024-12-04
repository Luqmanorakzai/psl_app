import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/auth_screens/auth_forgot/forgoat_screen.dart';
import 'package:psl_app/auth_screens/auth_signup/signup_screen.dart';
import 'package:psl_app/custom_widgets/auth_backgroun_image.dart';
import 'package:psl_app/custom_widgets/custom_login_signup_btn.dart';
import 'package:psl_app/utility/toast_popup.dart';

import '../../user_home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
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
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
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
                          'Forgot Password!',
                          style: TextStyle(
                              color: Color(0xff7091F5), fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                // custom botton
                CustomLoginSignupBtn(
                    btnName: 'LogIn',
                    onTap: () async {
                      // sign in from here
                      var email = emailController.text.trim();
                      var password = passwordController.text.trim();
                      // validation
                      if (email.isEmpty && password.isEmpty) {
                        ToastPopup().toastShow('email or password is empty',
                            Colors.deepPurpleAccent, Colors.white);
                        return;
                      }
                      // exception goes here
                      try {

                        // this will allow to signin user if credential is ture
                        FirebaseAuth firebaseAuth = FirebaseAuth.instance;
                        UserCredential userCredential =
                            await firebaseAuth.signInWithEmailAndPassword(
                                email: email, password: password);
                        // navigate according to the userCredential
                        if(userCredential.user!=null){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                            return UserHomeScreen();
                          }));
                        }else{
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                            return SignUpScreen();
                          }));
                        }
                      } on FirebaseAuth catch (e) {

                      }
                    }),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
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
