import 'package:uuid/uuid.dart';

var uuid = Uuid();

// A Unique Identifier is just a string, what makes this string special is that it
// is guaranteed to be unique when compared to every other UUID in our application.
class UUID {
  var uuid = Uuid();
  // New returns a UUID version 4
  String New() {
    return uuid.v4();
  }
}
