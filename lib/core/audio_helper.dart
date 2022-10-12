import 'package:audioplayers/audioplayers.dart';
import 'package:magic_counter_lh/core/core.dart';

class AudioHelper {
  static late AudioPlayer _audioPlayer;

  static init() {
    _audioPlayer = AudioPlayer();
  }

  static void play(String audio) {
    final soundOn = Prefs.getString(Const.SOUNDONOFF);

    //debugPrint('Sound $soundOn');
    if (soundOn == 'ON') {
      _audioPlayer.play(AssetSource(audio));
    }
  }
}
