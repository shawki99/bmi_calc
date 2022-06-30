import 'package:flutter/material.dart';

class BMIRes extends StatelessWidget {
final bool isMale;
final int age;
final int height;
final int weight;
final int result;

   BMIRes(
       {
         required this.isMale,
         required this.age,
         required this.height,
         required this.weight,
         required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text('Gender : $isMale', style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),
            Text('Age : $age', style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),
            Text('height : $height', style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),
            Text('weight : $weight', style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),
            Text('Results : $result', style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
