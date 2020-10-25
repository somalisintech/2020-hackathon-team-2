class PainPosition {
  String image;
  String description;
  String audio;
  PainPosition({this.description, this.image, this.audio});
}

class BodyPain {
  List<PainPosition> Pain_Positions;
  BodyPain({this.Pain_Positions});
}
