class Level {
  String image;
  int magnitude;
  String description;
  String audio;
  Level({this.magnitude, this.description, this.image, this.audio});
}

class PainLevels {
  List<Level> Levels;
  // Levels of pain

  PainLevels({this.Levels});
}
