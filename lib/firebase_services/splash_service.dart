

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psl_app/auth_screens/auth_signup/signup_screen.dart';
import 'package:psl_app/user_home_screen.dart';


class SplashService{
  void static; isLogin (BuildContext context)async{
    // await Future.delayed(Duration(milliseconds: 1500),(){});
   await Future.delayed(Duration(seconds: 2),(){
      // auth credential goes here
      if(FirebaseAuth.instance.currentUser!= null){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return UserHomeScreen();
        }));
      }else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return SignUpScreen();
        }));
      }
    });
    
  }
}