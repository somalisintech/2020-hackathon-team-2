import 'package:flutter/material.dart';

class PainScaleScreen extends StatefulWidget {
  @override
  _PainScaleScreenState createState() => _PainScaleScreenState();
}

class _PainScaleScreenState extends State<PainScaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Text("Family Page"),
          ),
        ),
      ),
    );
  }
}
