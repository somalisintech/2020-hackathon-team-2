import 'package:covid_communicator/components/icon_content.dart';
import "package:covid_communicator/components/reusable_card.dart";
import 'package:covid_communicator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              cardChild: IconContent(
                icon: FontAwesomeIcons.solidHospital,
                label: 'Pain',
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              cardChild: IconContent(
                icon: FontAwesomeIcons.baby,
                label: 'Wants/Needs',
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              cardChild: IconContent(
                icon: FontAwesomeIcons.tv,
                label: 'Entertainment',
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              cardChild: IconContent(
                icon: FontAwesomeIcons.solidSmile,
                label: 'About',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
