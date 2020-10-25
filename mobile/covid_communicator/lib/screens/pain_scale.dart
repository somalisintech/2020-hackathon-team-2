import 'package:covid_communicator/components/reusable_card.dart';
import 'package:covid_communicator/constants.dart';
import 'package:covid_communicator/data/pain_data.dart';
import 'package:covid_communicator/services/play_sound.dart';
import 'package:flutter/material.dart';

class PainScaleScreen extends StatefulWidget {
  @override
  _PainScaleScreenState createState() => _PainScaleScreenState();
}

class _PainScaleScreenState extends State<PainScaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Somali ICU Covid Communication"),
      ),
      body: Container(
        child: SafeArea(
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(PainScale.Levels.length, (index) {
              return Center(
                child: ReusableCard(
                  color: kMenuButtonActiveColor,
                  cardChild: Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          PainScale.Levels[index].image,
                          width: 70.0,
                        ),
                        Divider(
                          height: 10.0,
                        ),
                        Text(
                          PainScale.Levels[index].magnitude.toString(),
                          style: kLabelTextStyle,
                        ),
                        Text(
                          PainScale.Levels[index].description,
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                  ),
                  onPress: () {
                    play_sound().Local(PainScale.Levels[index].audio);
                  },
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
