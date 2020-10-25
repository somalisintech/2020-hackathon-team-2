import 'package:flutter/material.dart';

class PainScreen extends StatefulWidget {
  @override
  _PainScreenState createState() => _PainScreenState();
}

class _PainScreenState extends State<PainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Text("Pain Page"),
          ),
        ),
      ),
    );
  }
}
