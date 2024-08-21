import 'package:flutter/material.dart';
import 'package:psl_app/custom_widgets/custom_season_widget.dart';

class WinnerScreenOne extends StatelessWidget {
  const WinnerScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text(
          'Winner Team Name',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: const  [
            CustomSeasonScreen(
              matchNum: 'PSL Match 1 of 34',
              matchDate: '17 Feb 24',
              imgPathOne: 'assets/psl_teams_logos/LQlogo.png',
              teamOneScore: '175/5',
              teamOneOvers: 'Overs 20',
              imgPathTwo: 'assets/psl_teams_logos/ISlogo.png',
              teamTwoScore: '150/8',
              teamTwoOvers: 'Overs 20',
              teamOne: 'LQ',
              teamTwo: 'IU',
              winBy: 'LQ won by 25 runs',

            ),
            SizedBox(height: 10,),
            CustomSeasonScreen(
              matchNum: 'PSL Match 1 of 34',
              matchDate: '17 Feb 24',
              imgPathOne: 'assets/psl_teams_logos/LQlogo.png',
              teamOneScore: '175/5',
              teamOneOvers: 'Overs 20',
              imgPathTwo: 'assets/psl_teams_logos/ISlogo.png',
              teamTwoScore: '150/8',
              teamTwoOvers: 'Overs 20',
              teamOne: 'LQ',
              teamTwo: 'IU',
              winBy: 'LQ won by 25 runs',

            ),
            SizedBox(height: 10,),
            CustomSeasonScreen(
              matchNum: 'PSL Match 1 of 34',
              matchDate: '17 Feb 24',
              imgPathOne: 'assets/psl_teams_logos/LQlogo.png',
              teamOneScore: '175/5',
              teamOneOvers: 'Overs 20',
              imgPathTwo: 'assets/psl_teams_logos/ISlogo.png',
              teamTwoScore: '150/8',
              teamTwoOvers: 'Overs 20',
              teamOne: 'LQ',
              teamTwo: 'IU',
              winBy: 'LQ won by 25 runs',

            ),
            SizedBox(height: 10,),
            CustomSeasonScreen(
              matchNum: 'PSL Match 1 of 34',
              matchDate: '17 Feb 24',
              imgPathOne: 'assets/psl_teams_logos/LQlogo.png',
              teamOneScore: '175/5',
              teamOneOvers: 'Overs 20',
              imgPathTwo: 'assets/psl_teams_logos/ISlogo.png',
              teamTwoScore: '150/8',
              teamTwoOvers: 'Overs 20',
              teamOne: 'LQ',
              teamTwo: 'IU',
              winBy: 'LQ won by 25 runs',

            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
