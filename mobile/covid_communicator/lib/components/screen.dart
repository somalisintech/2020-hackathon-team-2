import 'package:covid_communicator/components/key.dart';
import 'package:covid_communicator/services/uuid.dart';

// A Screen is a collection of Keys, it builds on-top of the Key component
class Screen {
  String uuid;
  // uuid is the unique identifier for the Screen
  // It is a uuid version 4 string

  String name;
  // name is the human readable name for the Screen

  List<Key> keys;
  // Collection of Keys combine into a "Screen"

  String label;
  // label contains the

  // Screen Constructor
  Screen({this.name, this.keys, this.label}) {
    this.uuid = UUID().New();
  }
}
