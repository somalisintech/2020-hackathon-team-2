import 'package:covid_communicator/components/pain_scale.dart';

PainLevels PainScale = PainLevels(Levels: [
  Level(
      magnitude: 2,
      description: "Hurt Little Bit",
      image: "assets/pain_2.png",
      audio: "pain_2.mp3"),
  Level(
      magnitude: 4,
      description: "Hurts Little More",
      image: "assets/pain_4.png",
      audio: "pain_4.mp3"),
  Level(
      magnitude: 6,
      description: "Hurts Even More",
      image: "assets/pain_6.png",
      audio: "pain_6.mp3"),
  Level(
      magnitude: 8,
      description: "Hurts Whole Lot",
      image: "assets/pain_8.png",
      audio: "pain_8.mp3"),
  Level(
      magnitude: 9,
      description: "Hurts Worst",
      image: "assets/pain_8.png",
      audio: "pain_9.mp3"),
  Level(
      magnitude: 10,
      description: "Excruciating",
      image: "assets/pain_10.png",
      audio: "pain_10.mp3"),
]);
