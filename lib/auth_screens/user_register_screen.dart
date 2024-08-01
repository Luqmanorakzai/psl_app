import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psl_app/auth_screens/login_screen.dart';
import '../custom_widgets/auth_backgroun_image.dart';
import '../custom_widgets/custom_back_arrwo.dart';
import '../custom_widgets/custom_login_signup_btn.dart';
class UserRegisterScreen extends StatelessWidget {
  const UserRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 30),
                child: CustomBackArro(onTap: () {
                  Navigator.pop(context);
                }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                width:180,
                decoration: BoxDecoration(
                  image:const  DecorationImage(
                      image: AssetImage(
                          'assets/images/groupIcons/userRegIcon.png')),
                  shape: BoxShape.circle,
                  color: Color(0xff793FDF).withOpacity(.25),
                ),
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
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: '@email address',
                    prefixIcon: Icon(Icons.email_outlined)
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
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
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
