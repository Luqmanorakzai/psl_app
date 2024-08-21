import 'package:flutter/material.dart';
import 'package:psl_app/custom_widgets/custom_app_bar.dart';
import 'package:psl_app/custom_widgets/custom_dashboard_container.dart';
import 'package:psl_app/custom_widgets/custom_tab_bar_container.dart';
import 'package:psl_app/dashboard_screens/schedule_screen.dart';
import 'package:psl_app/dashboard_screens/team_screen.dart';
import 'package:psl_app/dashboard_screens/venues_screen.dart';
import 'package:psl_app/seasons_screens/winner_screen_one.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  final List dashBoardImagePath= ['assets/dashboard/schedule.png','assets/dashboard/venues.png','assets/dashboard/teams.png','assets/dashboard/highlights.png'];
  var isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2FF),
        appBar: const CustomAppBarForUser(
          title: 'User Name',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 320,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/Gaddafi_stadium_lahore.jpg'))),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.50),
                      child: Row(
                        children: [
                          const Icon(
                            size: 50,
                            Icons.sports_cricket,
                            color: Colors.white,
                          ),
                          Container(
                            width: 100,
                            child: const Center(
                              child: Text(
                                  textAlign: TextAlign.center,
                                  'Pakistan\nsuperLeague',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Pakistan Super League',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Season 9',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 110,
                                    color: Colors.red.withOpacity(0.70),
                                    child: const Center(
                                        child: Text(
                                      'PSL Turnoment',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      color: Colors.black.withOpacity(0.450),
                      child: const Row(
                        children: [
                          Image(
                              height: 50,
                              image: AssetImage(
                                  'assets/images/groupIcons/hblpsl-removebg-preview.png')),
                          Text(
                            'Powered By\nHBL PSL',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Image(
                              image: AssetImage(
                                  'assets/images/groupIcons/psl_logo_icon.png')),
                          Text(
                            'Sponsored By\nHBL',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.70),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/groupIcons/cupIcon.png'),
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Wining Price',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                              '\$ 50,00000',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.70),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/groupIcons/playerIcon.png'),
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Team Fee',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 160,
                            ),
                            Text(
                              '\$ 50,00000',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.70),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            // Image(image: AssetImage('assets/images/groupIcons/cupIcon.png'),
                            //   color: Colors.amber,),
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Player Fee',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 155,
                            ),
                            Text(
                              '\$ 50,00000',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //custom tab bar
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff708DF3),
                      width: 1,
                    ),
                    // color: Colors.grey.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  //Custom Tab bar containers
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = 0;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: isSelected == 0
                                  ? Colors.deepPurpleAccent
                                  : Color(0xffF1F2FF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text('Seasons',style: TextStyle(color: isSelected==0?Colors.white:Colors.deepPurpleAccent,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    const   SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = 1;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: isSelected == 1
                                  ? Colors.deepPurpleAccent
                                  : Color(0xffF1F2FF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text('Dashboard',
                            style: TextStyle(color: isSelected==1?Colors.white:Colors.deepPurpleAccent,fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                  const    SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = 2;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: isSelected == 2
                                  ?Colors.deepPurpleAccent
                                  : Color(0xffF1F2FF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text('Point Table',style: TextStyle(color: isSelected==2?Colors.white:Colors.deepPurpleAccent,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //custom tab bar indexStack is started from hare
              IndexedStack(
                index: isSelected,
                children: [
              Container(
                child: Column(
                  children: [
                    CustomTabBarContainer(
                        ontap: () {
                          // nav
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return WinnerScreenOne();
                          }));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Image.asset(
                                  width: 70,
                                  'assets/psl_teams_logos/PZlogo.png'),
                              Container(
                                width: 80,
                                child: const Center(
                                  child: Text(
                                      textAlign: TextAlign.center,
                                      'Peshawar\nZalmi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.white)),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Pakistan Super League',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Season 9',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 110,
                                        color: Colors.red.withOpacity(0.70),
                                        child: const Center(
                                            child: Text(
                                              "Winner History",
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                    ),


                    SizedBox(height: 10,),
                    CustomTabBarContainer(ontap: () {
                      //naiv
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return WinnerScreenOne();
                      }));
                    },
                    child: Row(
                      children: [
                       Image.asset(
                           width: 70,
                           'assets/psl_teams_logos/ISlogo.png'),
                        Container(
                          width: 80,
                          child: const Center(
                            child: Text(
                                textAlign: TextAlign.center,
                                'Islamabad\nUnited',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.white)),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Pakistan Super League',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Season 8',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 110,
                                  color: Colors.red.withOpacity(0.70),
                                  child: const Center(
                                      child: Text(
                                        'Winner History',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),),
                    SizedBox(height: 10,),
                    CustomTabBarContainer(ontap: () {
                      //naiv
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return WinnerScreenOne();
                      }));
                    },
                      child: Row(
                        children: [
                          Image.asset(
                              width: 70,
                              'assets/psl_teams_logos/MSlogo.png'),
                          Container(
                            width: 80,
                            child: const Center(
                              child: Text(
                                  textAlign: TextAlign.center,
                                  'Multan\nSultan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Pakistan Super League',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Season 7',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 110,
                                    color: Colors.red.withOpacity(0.70),
                                    child: const Center(
                                        child: Text(
                                          'Winner History',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),),
                    SizedBox(height: 10,),
                    CustomTabBarContainer(ontap: () {
                      //naiv
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return WinnerScreenOne();
                      }));
                    },
                      child: Row(
                        children: [
                          Image.asset(
                              width: 70,
                              'assets/psl_teams_logos/KrKlogo.png'),
                          Container(
                            width: 80,
                            child: const Center(
                              child: Text(
                                  textAlign: TextAlign.center,
                                  'Karachi\nKing',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.white)),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Pakistan Super League',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Season 6',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 110,
                                    color: Colors.red.withOpacity(0.70),
                                    child: const Center(
                                        child: Text(
                                          'Winner History',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),),
                  ],
                ),
              ),

                  // dishboard
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        // Text(
                        //   textAlign: TextAlign.center,
                        //   'Pakistan Super League 2024\n DashBoard',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomDashboardContainer(imagePath: 'assets/dashboard/schedule.png', title: 'Schedule', onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return ScheduleScreen();
                              }));
                            }),
                            CustomDashboardContainer(imagePath: 'assets/dashboard/venues.png', title: 'Venues', onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return VenuesScreen();
                              }));
                            }),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomDashboardContainer(imagePath: 'assets/dashboard/teams.png', title: 'Teams', onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return TeamsScreen();
                              }));
                            }),
                            CustomDashboardContainer(imagePath: 'assets/dashboard/history.png', title: 'History', onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return WinnerScreenOne();
                              }));
                            }),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomDashboardContainer(imagePath: 'assets/dashboard/highlights.png', title: 'HighLights', onTap: (){
                            }),
                            CustomDashboardContainer(imagePath: 'assets/dashboard/live_score.png', title: 'Live Score', onTap: (){
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Point Table portion
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                      color:Color(0xffF1F2FF),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffF1F2FF),width: 5)
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Pakistan Super League 2024',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),)),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Teams',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
                            SizedBox(width: 110,),
                            Text('M',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('W',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('L',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('PT',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('NBR',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('PZ',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 140,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('7',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('3',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('14',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('0.915',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('LQ',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 140,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('6',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('4',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('12',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('0.-500',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('IU',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 145,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('6',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('4',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('12',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('0.500',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('MS',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 135,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('5',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('5',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('0.-300',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('QG',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 140,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('5',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('5'),
                            SizedBox(width: 15,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('0.-300',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('KK',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 140,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('5',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('5',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('10',style: TextStyle(color: Colors.black),),
                            SizedBox(width: 15,),
                            Text('0.-300',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        Divider(height: 2,),
                      ],
                    ),
                  )


                ],
              )
            ],
          ),
        ));
  }
}
