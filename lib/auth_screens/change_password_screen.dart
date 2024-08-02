import 'package:flutter/material.dart';

import '../custom_widgets/auth_backgroun_image.dart';
import '../custom_widgets/custom_back_arrwo.dart';
import '../custom_widgets/custom_login_signup_btn.dart';
import 'login_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
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
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image:const  DecorationImage(
                      image: AssetImage(
                          'assets/images/groupIcons/changePI.png')),
                  shape: BoxShape.circle,
                  color: Color(0xff793FDF).withOpacity(.25),
                ),
              ),
              const   SizedBox(
                height: 10,
              ),
              const   Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('Change your\n  Password',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              const    SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: 'Contact number',
                    prefixIcon: Icon(Icons.phone)
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: '@email address',
                    prefixIcon: Icon(Icons.email_outlined)
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'New Password',
                    prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
              const    SizedBox(
                height: 20,
              ),
              CustomLoginSignupBtn(btnName: 'Save changes', onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                  return LogInScreen();
                }));


              })


            ],),
          ),
        ),
      ),
    );
  }
}
