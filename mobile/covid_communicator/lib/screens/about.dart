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
        title: Text("About US"),
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
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Text(
                      "Description: " + AboutUs.description,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    Text(
                      "Site: " + AboutUs.url,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      height: 10.0,
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
