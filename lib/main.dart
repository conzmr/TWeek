import 'package:flutter/material.dart';
import 'package:tweek/week_plan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TWeek',
      home: WeekPlan(),
    );
  }
}
