import 'package:flutter/material.dart';

class PainPositionScreen extends StatefulWidget {
  @override
  _PainPositionScreenState createState() => _PainPositionScreenState();
}

class _PainPositionScreenState extends State<PainPositionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Text("Pain Position Page"),
          ),
        ),
      ),
    );
  }
}
