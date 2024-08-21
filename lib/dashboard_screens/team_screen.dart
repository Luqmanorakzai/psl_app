import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psl_app/utility/teams_detail_list.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'PSL 2024 Teams',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: TeamsDetailsList.captainNames.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.4),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurpleAccent, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${TeamsDetailsList.teamsName[index]}',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: ClipOval(
                            child: Image.asset(
                                fit: BoxFit.cover,
                                '${TeamsDetailsList.teamsLogosPath[index]}'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                      height: 110.h,
                      width: double.infinity.w,
                      '${TeamsDetailsList.captains[index]}'),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text('${TeamsDetailsList.captainNames[index]}'),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('See More'),
                        Container(
                          height: 30.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(4)),
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
