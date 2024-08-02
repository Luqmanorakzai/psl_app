import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../custom_widgets/auth_backgroun_image.dart';
import '../custom_widgets/custom_back_arrwo.dart';
import '../custom_widgets/custom_login_signup_btn.dart';
import 'login_screen.dart';

class PlayerRegistrationScreen extends StatefulWidget {
 const PlayerRegistrationScreen({super.key});

  @override
  State<PlayerRegistrationScreen> createState() => _PlayerRegistrationScreenState();
}

class _PlayerRegistrationScreenState extends State<PlayerRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    final String _selectedGender = 'Male'; // Default selection
    return Scaffold(
      body: AuthBackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    CustomBackArro(onTap: () {
                      Navigator.pop(context);
                    }),
                    SizedBox(width: 20,),
                    Text('Registor as player:>',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 100,
                    width:100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff793FDF).withOpacity(.25),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 70,
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(.75)
                        ),
                        child: Icon(Icons.edit,color: Colors.white,)),
                  )

                ],
              ),
              const   Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('Forgoat\nPassword',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: 'contact number',
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
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Type Your Pin Code By PCB',
                    prefixIcon: Icon(Icons.pin),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Role Batting Style',
                    prefixIcon: Icon(Icons.sports_cricket_outlined),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Role Batting Style',
                  prefixIcon: Icon(Icons.sports_cricket_outlined),
                ),
              ),
              const    SizedBox(
                height: 20,
              ),

              CustomLoginSignupBtn(btnName: 'Register', onTap: (){
                // navigate to
              }),
              const    SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have allready an accont?'),
                  InkWell(

                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                          return LogInScreen();
                        }));
                      },
                      child: Text('LogIn',style: TextStyle(color: Color(0xff7091F5), fontWeight: FontWeight.w500,fontSize: 16),)),
                ],
              ),
            ],),
          ),
        ),
      ),
    );
  }
}
