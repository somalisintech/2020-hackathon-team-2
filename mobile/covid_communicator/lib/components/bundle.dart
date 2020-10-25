import 'package:covid_communicator/components/screen.dart';
import 'package:covid_communicator/services/uuid.dart';

class Bundle {
  String uuid;
  // uuid is the unique identifier for the Bundle
  // It is a uuid version 4 string

  String name;
  // name is the human readable name for the key

  List<Screen> screens;
  // Collection of Keys combine into a "Screen"

// Bundle constructor
  Bundle({this.name, this.screens}) {
    this.uuid = UUID().New();
  }
}
