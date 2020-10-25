import 'package:covid_communicator/components/reusable_card.dart';
import 'package:covid_communicator/constants.dart';
import 'package:covid_communicator/data/pain_positions_data.dart';
import 'package:covid_communicator/services/play_sound.dart';
import 'package:flutter/material.dart';

class PainPositionScreen extends StatefulWidget {
  @override
  _PainPositionScreenState createState() => _PainPositionScreenState();
}

class _PainPositionScreenState extends State<PainPositionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Where does it hurt?"),
      ),
      body: Container(
        child: SafeArea(
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(PainOnBody.Pain_Positions.length, (index) {
              return Center(
                child: ReusableCard(
                  color: kMenuButtonActiveColor,
                  cardChild: Expanded(
                    child: Column(
                      children: [
                        Divider(
                          height: 10.0,
                        ),
                        Image.asset(
                          PainOnBody.Pain_Positions[index].image,
                          width: 60.0,
                        ),
                        Divider(
                          height: 10.0,
                        ),
                        Text(
                          PainOnBody.Pain_Positions[index].description,
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                  ),
                  onPress: () {
                    play_sound().Local(PainOnBody.Pain_Positions[index].audio);
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
