import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/auth_screens/auth_login/login_screen.dart';
import '../../custom_widgets/auth_backgroun_image.dart';
import '../../custom_widgets/custom_back_arrwo.dart';
import '../../custom_widgets/custom_login_signup_btn.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
  var  nameController = TextEditingController();
  var  numberController = TextEditingController();
  var  emailController = TextEditingController();
  var  passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: GlobalKey(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 30),
                    child: CustomBackArro(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return LogInScreen();
                      }));
                    }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 180.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/groupIcons/userRegIcon.png')),
                      shape: BoxShape.circle,
                      color: Color(0xff793FDF).withOpacity(.25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          'Hey, Register Now\n to PSL',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'Name', prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'contact number',
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: '@email address',
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomLoginSignupBtn(
                      btnName: 'SignUp Now',
                      onTap: () {
                        // navigate to
                      }),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have allready an accont?',
                        style: TextStyle(color: Colors.black),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) {
                              return LogInScreen();
                            }));
                          },
                          child: Text(
                            ' LogIn',
                            style: TextStyle(
                                color: Color(0xff7091F5),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

