import 'package:covid19cases/screens/home_screen/cases_card.dart';
import 'package:covid19cases/screens/home_screen/logo.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

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

                      CasesCard(
                        city: 'Tripoli',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),

                      CasesCard(
                        city: 'Benghazi',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                      CasesCard(
                        city: 'Misrata',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                      CasesCard(
                        city: 'Sabha',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                      CasesCard(
                        city: 'Khoms',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                      CasesCard(
                        city: 'Zuwara',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                      CasesCard(
                        city: 'Kufra',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                      CasesCard(
                        city: 'Bani Walid',
                        confirmed: new Random().nextInt(70-40),
                        active: new Random().nextInt(50 - 30),
                        deaths: new Random().nextInt(30-8),
                        recovered: new Random().nextInt(25-10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
