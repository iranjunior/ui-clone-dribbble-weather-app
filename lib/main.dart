import 'package:flutter/material.dart';
import 'package:weather_app/pages/pages.dart';

void main() {
  runApp(EntryApp());
}

class EntryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 120,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik'
          ),
          headline2: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Rubik'
          ),
          headline3: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: 'Rubik'
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Rubik'
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            color: Color(0xff69798D),
            fontFamily: 'Rubik'
          ),
          caption: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Rubik'
          ),
          overline: TextStyle(
            fontSize: 12,
            color: Color(0xff88C8F5),
            fontFamily: 'Rubik'
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/seven-days': (context) => SevenDaysPage()
      },
    );
  }
}
