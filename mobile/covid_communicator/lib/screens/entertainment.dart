import 'package:covid_communicator/components/reusable_card.dart';
import 'package:covid_communicator/constants.dart';
import 'package:covid_communicator/services/play_sound.dart';
import 'package:flutter/material.dart';

class EntertainmentScreen extends StatefulWidget {
  @override
  _EntertainmentScreenState createState() => _EntertainmentScreenState();
}

class _EntertainmentScreenState extends State<EntertainmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Entertainment"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              onPress: () {
                Navigator.pushNamed(context, '/');
                play_sound().Local('bbc_somalia.wav');
              },
              cardChild: Expanded(
                child: Column(
                  children: [
                    Divider(
                      height: 100.0,
                    ),
                    Image.asset(
                      'assets/somali_radio.png',
                      width: 300.0,
                    ),
                    Text(
                      "Listen to BBC Somalia Online",
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              onPress: () {
                Navigator.pushNamed(context, '/');
                play_sound().Local('quran_sound.mp3');
              },
              cardChild: Expanded(
                child: Column(
                  children: [
                    Divider(
                      height: 100.0,
                    ),
                    Image.asset(
                      'assets/Quran.png',
                      width: 300.0,
                    ),
                    Text(
                      "Listen to the Holy Quran",
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
