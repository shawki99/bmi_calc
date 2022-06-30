import 'package:as_course/modules/bmi_results/bmi_res.dart';
import 'package:as_course/modules/login/login_screen.dart';
import 'package:as_course/modules/messenger/messenger%20screen.dart';
import 'package:flutter/material.dart';
import 'modules/bmi/bmi_calc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalc(),
    );
  }
}




