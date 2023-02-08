import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/dimension.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/home_view.dart';
import 'package:myapp/widgets/all_task.dart';
import 'package:myapp/widgets/reminder_task.dart';

void main() => runApp( MyApp());

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView()




      // home: ReminderTask(),
    );
  }
}
