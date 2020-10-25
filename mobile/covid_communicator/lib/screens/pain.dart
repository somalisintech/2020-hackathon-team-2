import 'package:covid_communicator/components/icon_content.dart';
import "package:covid_communicator/components/reusable_card.dart";
import 'package:covid_communicator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PainScreen extends StatefulWidget {
  @override
  _PainScreenState createState() => _PainScreenState();
}

class _PainScreenState extends State<PainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Somali ICU Covid Communication"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              onPress: () {
                Navigator.pushNamed(context, '/pain_position');
              },
              cardChild: Column(
                children: [
                  Image.asset(
                    'assets/pain_0.png',
                    width: 500.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              cardChild: IconContent(
                icon: FontAwesomeIcons.baby,
                label: 'Pain Scale',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
