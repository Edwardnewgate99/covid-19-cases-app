import 'package:covid19cases/screens/home_screen/cases_card.dart';
import 'package:covid19cases/screens/home_screen/logo.dart';
import 'package:flutter/material.dart';

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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Logo(),
                      CasesCard(
                        city: 'Tripoli',
                        active: 20,
                        confirmed: 23,
                        deaths: 32,
                        recovered: 32,
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
