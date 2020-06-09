import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class HealthTips extends StatelessWidget {





  @override
  Widget build(BuildContext context) =>

        Card(

          color: Color.fromRGBO(223, 223, 223, 1),
          shape: RoundedRectangleBorder(


            borderRadius: BorderRadius.all(
              Radius.circular(55),

            ),

          ),


          child: Padding(
            padding: const EdgeInsets.all(10.0),

            child: Column(
              children: <Widget>[
                Text(
                  'BE',

                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'THE CURE',

                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 10),
                Image.asset(
                  'assets/corona.png',
                  height: 230,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),

        );



}
