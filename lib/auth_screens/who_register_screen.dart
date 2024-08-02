
import 'package:flutter/material.dart';
import 'package:psl_app/auth_screens/player_registration_screen.dart';
import 'package:psl_app/auth_screens/user_register_screen.dart';
import 'package:psl_app/custom_widgets/auth_backgroun_image.dart';
import 'package:psl_app/custom_widgets/custom_back_arrwo.dart';
class WhoRegisterScreen extends StatelessWidget {
  const WhoRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundImage(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 50),
                child: CustomBackArro(onTap: () {
                  Navigator.pop(context);
                }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/groupIcons/SigningUserAccount.png')),
                  shape: BoxShape.circle,
                  color: Color(0xff793FDF).withOpacity(.25),
                ),
              ),
            const   SizedBox(
                height: 30,
              ),
             const  Text(
                'Hey, Register Now',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
           const    Text(
             textAlign: TextAlign.center,
               'Register as you want be on \n This app'),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      //Navigate to player
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return PlayerRegistrationScreen();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xff7091F5),Color(0xff793FDF)]
                        )
                      ),
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Icon(Icons.person,color: Colors.white,),
                          Text('Player',style: TextStyle(fontSize: 16,color: Colors.white),)
                      ],),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      // Navigate to user
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return UserRegisterScreen();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff7091F5),Color(0xff793FDF)]
                          )
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.person,color: Colors.white,),
                          Text('User',style: TextStyle(fontSize: 16,color: Colors.white),)
                        ],),
                    ),
                  )

                ],
              )

            ],
          ),
      )
    );
  }
}
