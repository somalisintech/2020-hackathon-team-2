import 'package:audioplayers/audio_cache.dart';

class play_sound {
  AudioCache player = AudioCache();
  // Local is a short file already on file system
  Local(String file) {
    player.play(file);
  }

  // TODO remote audio,  mute, pause, seek, stop etc
}
