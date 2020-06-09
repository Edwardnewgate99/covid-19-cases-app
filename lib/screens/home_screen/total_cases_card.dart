import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class TotalCases extends StatelessWidget {





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
                    'Total Cases',
                    style: TextStyle(fontSize: 23),
                  ),
                  Text(
                    '"177"',
                    style: TextStyle(fontSize: 23,color: Colors.red),
                  ),
                  Image.asset(
                    'assets/map.png',
                    height: 230,
                    width: 330,
                    fit: BoxFit.fill,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(height: 10),


                      Column(
                        children: <Widget>[
                          Text(
                            'Active',
                            style: TextStyle(fontSize: 20,color: Colors.red ),
                          ),
                          Text(
                            '119',
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Text(
                            'Deaths',
                            style: TextStyle(fontSize: 20,color: Colors.black ),
                          ),
                          Text(
                            '45',
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),



                      Column(
                        children: <Widget>[
                          Text(
                            'Recovered',
                            style: TextStyle(fontSize: 20,color: Colors.green.shade500),
                          ),
                          Text(
                            '13',
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),



                    ],
                  )
                ],

              ),
            )
      );
}
