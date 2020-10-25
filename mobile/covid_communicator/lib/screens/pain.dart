import "package:covid_communicator/components/reusable_card.dart";
import 'package:covid_communicator/constants.dart';
import 'package:flutter/material.dart';

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
                Navigator.pushNamed(context, '/pain_scales');
              },
              cardChild: Expanded(
                child: Column(
                  children: [
                    Divider(
                      height: 80.0,
                    ),
                    Image.asset(
                      'assets/pain_scales.png',
                      width: 300.0,
                    ),
                    Text(
                      "Pain Scale",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              onPress: () {
                Navigator.pushNamed(context, '/pain_position');
              },
              cardChild: Expanded(
                child: Column(
                  children: [
                    Divider(
                      height: 80.0,
                    ),
                    Image.asset(
                      'assets/pain_positions.png',
                      width: 200.0,
                    ),
                    Text(
                      "Pain Positions",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
