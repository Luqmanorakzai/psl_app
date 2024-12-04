import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/auth_screens/auth_login/login_screen.dart';
import 'package:psl_app/user_home_screen.dart';
import '../../custom_widgets/auth_backgroun_image.dart';
import '../../custom_widgets/custom_back_arrwo.dart';
import '../../custom_widgets/custom_login_signup_btn.dart';
import '../../utility/toast_popup.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  // FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 30),
                    child: CustomBackArro(onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'Name', prefixIcon: Icon(Icons.person)),
                  ),
                  TextFormField(
                    // validation from here
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter contact';
                      }
                      return null;
                    },
                    controller: numberController,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'contact number',
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: '@email address',
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter passoword';
                      }
                      return null;
                    },
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (passwordController.text.trim() !=
                          confirmPasswordController.text.trim()) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
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
                      btnName: 'SignUp Now',
                      onTap: () async {
                        //// signing up to firebase
                        // if(_formKey.currentState!.validate()){
                        //   auth.createUserWithEmailAndPassword(
                        //       email: emailController.text.trim(),
                        //       password: passwordController.text.trim())
                        //       .then((value) {
                        //     ToastPopup().toastShow(
                        //         'Signup successfully ',
                        //         Colors.deepPurpleAccent,
                        //         Colors.white);
                        //     setState(() {
                        //       isLoading = false;
                        //     });
                        //   }).onError((error, stackTrace) {
                        //     ToastPopup().toastShow(error.toString(), Colors.amberAccent, Colors.white);
                        //   });
                        //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                        //     return LogInScreen();
                        //   }));
                        // }

                        var useName = nameController.text.trim();
                        var phoneNumber = numberController.text.trim();
                        var email = emailController.text.trim();
                        var password = passwordController.text.trim();
                        var confPassword =
                            confirmPasswordController.text.trim();
                        setState(() {
                          isLoading = true;
                        });
                        if (password.length < 8) {
                          ToastPopup().toastShow('Weak password',
                              Colors.deepPurpleAccent, Colors.white);
                          return;
                        }
                        if(password!=confPassword){
                          ToastPopup().toastShow('Passwords do not matched', Colors.deepPurpleAccent, Colors.white);
                          return;
                        }
                        try {
                          //store user data here form sign up
                          FirebaseAuth firebaseAuth = FirebaseAuth.instance;
                          UserCredential userCredential =
                              await firebaseAuth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if(userCredential.user!=null){
                            // store the user here like user name phone number
                            //code goes here


                            DatabaseReference userRef =
                            FirebaseDatabase.instance.ref().child('user');
                            // store the user id in uid for user repfrence
                            String uid= userCredential.user!.uid;
                            String dt = DateTime.now().millisecondsSinceEpoch.toString();

                            // now store the user data from sign up screen in uerRef ojbect
                            userRef.child(uid).set({
                              'userName':useName,
                              'email':email,
                              'phone': phoneNumber,
                              'dateTime':dt,
                              // store profile pic also
                              'profile':'',
                            });

                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return UserHomeScreen();
                            }));
                            setState(() {
                              isLoading = false;
                            });
                          }//else section

                        } on FirebaseAuthException catch (e) {
                          ToastPopup().toastShow(e, Colors.deepPurpleAccent, Colors.white);
                        }

                        nameController.clear();
                        numberController.clear();
                        emailController.clear();
                        passwordController.clear();
                        confirmPasswordController.clear();
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
