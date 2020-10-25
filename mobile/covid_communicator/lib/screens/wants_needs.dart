import 'package:flutter/material.dart';

class WantsNeedsScreen extends StatefulWidget {
  @override
  _WantsNeedsScreenState createState() => _WantsNeedsScreenState();
}

class _WantsNeedsScreenState extends State<WantsNeedsScreen> {
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
            children: List.generate(WantsNeeds.keys.length, (index) {
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
                          WantsNeeds.keys[index].image,
                          width: 60.0,
                        ),
                        Divider(
                          height: 10.0,
                        ),
                        Text(
                          WantsNeeds.keys[index].description,
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                  ),
                  onPress: () {
                    play_sound().Local(WantsNeeds.keys[index].audio);
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