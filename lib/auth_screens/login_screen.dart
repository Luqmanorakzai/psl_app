import 'package:flutter/material.dart';
import 'package:psl_app/auth_screens/forgoat_screen.dart';
import 'package:psl_app/auth_screens/who_register_screen.dart';
import 'package:psl_app/custom_widgets/auth_backgroun_image.dart';
import 'package:psl_app/custom_widgets/custom_login_signup_btn.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        child: AuthBackgroundImage(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(0.15),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('assets/images/introPlayer2.png'))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Welcome\nBack',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: ('Contact number'),
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter:'*',
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintText: ('Your Password'),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //navigate to forgot screen
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return ForgoatScreen();
                          }));
                        },
                        child:const  Text(
                          'Forgoat Password!',
                          style:
                              TextStyle(color: Color(0xff7091F5), fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                // custom botton
                CustomLoginSignupBtn(btnName: 'LogIn', onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return WhoRegisterScreen();
                  }));
                  print('Clicked');
                    }),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const   Text("Don't have an account?"),
                const SizedBox(
                      width: 2,
                    ),
                    GestureDetector(onTap: () {



                    }, child: const Text('Sign up', style:
                    TextStyle(color: Color(0xff7091F5), fontSize: 16),)),
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
