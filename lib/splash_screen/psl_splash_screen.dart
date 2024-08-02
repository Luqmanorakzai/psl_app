import 'package:flutter/material.dart';
import 'package:psl_app/intro_screens/intro_screen_1.dart';

class PslSplashScreen extends StatefulWidget {
  const PslSplashScreen({super.key});

  @override
  State<PslSplashScreen> createState() => _PslSplashScreenState();
}

class _PslSplashScreenState extends State<PslSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigate();
  }
  _navigate() async{
    // await Future.delayed(Duration(milliseconds: 1500),(){});
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return IntroScreenOne();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg1.jpg'),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/introPlayer2.png')
              )
            ),
          )
        )
      ),
    );
  }
}
