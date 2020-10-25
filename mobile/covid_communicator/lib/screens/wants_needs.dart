import 'package:flutter/material.dart';

class WantsNeedsScreen extends StatefulWidget {
  @override
  _WantsNeedsScreenState createState() => _WantsNeedsScreenState();
}

class _WantsNeedsScreenState extends State<WantsNeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Text("About Page"),
          ),
        ),
      ),
    );
  }
}
