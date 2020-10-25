import 'package:covid_communicator/screens/about.dart';
import 'package:covid_communicator/screens/entertainment.dart';
import 'package:covid_communicator/screens/family.dart';
import 'package:covid_communicator/screens/home.dart';
import 'package:covid_communicator/screens/pain.dart';
import 'package:covid_communicator/screens/pain_position.dart';
import 'package:covid_communicator/screens/pain_scale.dart';
import 'package:covid_communicator/screens/wants_needs.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidCommunactor());

class CovidCommunactor extends StatefulWidget {
  @override
  _CovidCommunactorState createState() => _CovidCommunactorState();
}

class _CovidCommunactorState extends State<CovidCommunactor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/entertainment': (context) => EntertainmentScreen(),
        '/family': (context) => FamilyScreen(),
        '/pain': (context) => PainScreen(),
        '/pain_position': (context) => PainPositionScreen(),
        '/pain_scale': (context) => PainScaleScreen(),
        '/wants_needs': (context) => WantsNeedsScreen(),
      },
    );
  }
}
