import 'package:covid_communicator/services/uuid.dart';

// A key represents the smallest addressable unit in our component library
class Key {
  String uuid;
  // uuid is the unique identifier for the Key
  // It is a uuid version 4 string

  String name;
  // name is the human readable name for the key

  String label;
  // label contains the

  String img;
  // Image URI

  String audio;
  // audio recording URI

  List<String> actions;
  // The commands this button can do

  // Key constructor
  Key({this.name, this.label, this.img, this.actions}) {
    this.uuid = UUID().New();
  }
}
