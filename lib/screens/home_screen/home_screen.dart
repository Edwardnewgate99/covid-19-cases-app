import 'package:covid19cases/models/cases_info.dart';
import 'package:covid19cases/screens/home_screen/cases_card.dart';
import 'package:covid19cases/screens/home_screen/logo.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen();
  final cases = const<CasesInfo>[
    CasesInfo(
      city: 'Tripoli', confirmed: 55, deaths: 18, recovered: 6,),
    CasesInfo(
      city: 'Benghazi', confirmed: 19, deaths: 3, recovered: 0,
    ),
    CasesInfo(
      city: 'Misrata',
      confirmed: 36, deaths: 8, recovered: 0,
    ),
    CasesInfo(
      city: 'Sabha',
      confirmed: 22, deaths: 6, recovered: 10,
    ),
    CasesInfo(
      city: 'Khoms',
      confirmed: 6, deaths: 0, recovered: 1,
    ),
    CasesInfo(
      city: 'Zuwara',
      confirmed: 19, deaths: 8, recovered: 3,
    ),
    CasesInfo(
      city: 'Kufra',
      confirmed: 14, deaths: 5, recovered:0,
    ),
    CasesInfo(
      city: 'Bani Walid',
      confirmed: 6, deaths: 0, recovered: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/covid-19.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue.withOpacity(.3),
            ),
            SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),

                  child: ListView(

                    children: [
                      Logo(),

                      SizedBox(height: 10),
                      ...cases.map((info) => CasesCard(info)),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
