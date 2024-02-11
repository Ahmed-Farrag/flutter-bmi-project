import 'package:flutter/material.dart';

import 'modules/home/home.dart';
import 'modules/login/login.dart';
import 'modules/massenger/massenger.dart';
import 'modules/users/usersModel.dart';
import 'modules/counter/counterScreen.dart';
import 'modules/bmi/bmiScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
