import 'dart:math';

import 'package:as_course/modules/bmi_results/bmi_res.dart';
import 'package:flutter/material.dart';

class BMICalc extends StatefulWidget {
  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xFF0A014F),
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Color(0xFFFAE8EB),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: isMale ? Color(0xFFCD9FCC) : Color(0xFFFAE8EB),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image( image: AssetImage('Assets/images/male.png'),height: 150.0,width: 150.0,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: isMale ?Color(0xFFFAE8EB) : Color(0xFFCD9FCC),
                        ),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image( image: AssetImage('Assets/images/female.png'),height: 150.0,width: 150.0,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFFFAE8EB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('Height',
                          style:
                              TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color: Color(0xFF12100E))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w400,color: Color(0xFF12100E)),
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                            'cm',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w400,color: Color(0xFF12100E)),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Color(0xFFCD9FCC),
                          thumbColor: Color(0xFFF6CACA),
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value)
                          {
                            setState((){
                              height = value;
                            });
                          }
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all( 20.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFAE8EB),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                          [
                            Text('WEIGHT ', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w900,color: Color(0xFF12100E))),
                            Text('$weight'+' Kg', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w400, color: Color(0xFF12100E))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  mini: true,
                                  heroTag: 'w--',
                                  child: Icon(Icons.remove),
                                  backgroundColor: Color(0xFFCD9FCC),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'w++',
                                  mini: true,
                                  child: Icon(Icons.add),
                                  backgroundColor: Color(0xFFCD9FCC),
                                ),

                              ],
                            ),
                          ],
                      ),
                    ),
                    SizedBox( width: 20.0,),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFAE8EB),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text('AGE', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w900,color: Color(0xFF12100E))),
                          Text('$age'+' years', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w400, color: Color(0xFF12100E))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                heroTag: 'a--',
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFFCD9FCC),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'a++',
                                mini: true,
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFFCD9FCC),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFFAE8EB),
            child: MaterialButton(
              onPressed: () {
                double resultts = weight/pow(height / 100, 2);
                print(resultts.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIRes(isMale:isMale ,age:age ,height: height.round() ,weight: weight ,result: resultts.round()),
                ),);
              },
              child: Text(
                'Calculate',
                style: TextStyle(color: Colors.black ),
              ),
              height: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
