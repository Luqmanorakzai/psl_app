import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psl_app/custom_widgets/custom_schedule_screen.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        title: Text(
          'PSL 2024 Schedule',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListView(
            children: const [
              CustomScheduleScreen(
                  matchNum: 'PSL Match 1 of 34',
                  matchDate: '17 Feb 24',
                  imgPathOne: 'assets/psl_teams_logos/LQlogo.png',
                  imgPathTwo: 'assets/psl_teams_logos/ISlogo.png',
                  teamOne: 'LQ',
                  teamTwo: 'IU',
                  stodiumName: 'Karachi Stodium'),
              SizedBox(height: 10,),
              CustomScheduleScreen(
                  matchNum: 'PSL March 2 of 34',
                  matchDate: '18 Feb 24',
                  imgPathOne: 'assets/psl_teams_logos/QGlogo.png',
                  imgPathTwo: 'assets/psl_teams_logos/PZlogo.png',
                  teamOne: 'QG',
                  teamTwo: 'PZ',
                  stodiumName: 'Gaddafi Stodium'),
              SizedBox(height: 10,),
              CustomScheduleScreen(
                  matchNum: 'PSL Match 3 of 34',
                  matchDate: '18 Feb 24',
                  imgPathOne: 'assets/psl_teams_logos/MSlogo.png',
                  imgPathTwo: 'assets/psl_teams_logos/KrKlogo.png',
                  teamOne: 'MS',
                  teamTwo: 'KK',
                  stodiumName: 'Rawalpindi Stodium')
            ],
          )),
    );
  }
}
