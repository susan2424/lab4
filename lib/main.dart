import 'package:flutter/material.dart';
import 'package:lab4/themes/appthemes.dart';
import 'Screens/homescreens.dart';


void main() {
  runApp(NoteMeApp());
}

class NoteMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteMe',
      theme: AppThemes.lightTheme,
      home: HomeScreen(),
    );
  }
}
