import 'package:covid_communicator/components/reusable_card.dart';
import 'package:covid_communicator/constants.dart';
import 'package:covid_communicator/data/about_data.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text("Somali ICU Covid Communication"),
      ),
      body: Container(
        child: SafeArea(
          child: Center(
            child: ReusableCard(
              color: kMenuButtonActiveColor,
              onPress: () {
                Navigator.pushNamed(context, '/');
              },
              cardChild: Expanded(
                child: Column(
                  children: [
                    Divider(
                      height: 100.0,
                    ),
                    Text(
                      "Authors: " + AboutUs.authors.toString(),
                      style: kLabelTextStyle,
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Text(
                      "Description: " + AboutUs.description,
                      style: kLabelTextStyle,
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Text(
                      "Site: " + AboutUs.url,
                      style: kLabelTextStyle,
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Text(
                      "Authors: " + AboutUs.createdAt.toString(),
                      style: kLabelTextStyle,
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Text(
                      "Version: " + AboutUs.version,
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
