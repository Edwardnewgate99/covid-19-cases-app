import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CasesCard extends StatelessWidget {
  const CasesCard({
    @required this.city,
    @required this.confirmed,
    @required this.deaths,
    @required this.recovered,
    @required this.active,
  });

  final String city;
  final int confirmed, deaths, recovered, active;

  @override
  Widget build(BuildContext context) => Card(

    color: Color.fromRGBO(223, 223, 223, 1),
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.all(
            Radius.circular(15),

          ),

        ),

    child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(

            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Text(
                    city,
                    style: TextStyle(fontSize: 23),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberStats('Confirmed',confirmed),
                  NumberStats('Active',active),
                  NumberStats('Recovered',recovered),
                  NumberStats('Deaths',deaths),
                ],
              )
            ],
          ),
        ),
      );
}

class NumberStats extends StatelessWidget {
  const NumberStats(this.name, this.number);

  final int number;
  final String name;

  @override
  Widget build(BuildContext context) => Column(

        children: [
          Text('$number'
          ,style: TextStyle(fontSize: 20),),

          tet(name),
        ],
      );
}

//coloring
 tet(name){
  return name=='Confirmed'? Text(name,style: TextStyle(fontSize: 15,color: Colors.red[800])):
  name=='Active'? Text(name,style: TextStyle(fontSize: 15,color: Colors.yellow[800])):
  name=='Recovered'? Text(name,style: TextStyle(fontSize: 15,color: Colors.green[800])):
  Text(name,style: TextStyle(fontSize: 15,color: Colors.black));
}
