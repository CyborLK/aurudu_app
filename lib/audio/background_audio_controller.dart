import 'package:audioplayers/audioplayers.dart';

class BackgroundAudioController {
  static final BackgroundAudioController _instance = BackgroundAudioController._internal();
  factory BackgroundAudioController() => _instance;

  final AudioPlayer _player = AudioPlayer();
  bool _isPlaying = false;

  BackgroundAudioController._internal();

  bool get isPlaying => _isPlaying;

  Future<void> init() async {
    await _player.setReleaseMode(ReleaseMode.loop);
    await _player.setSource(AssetSource('audio/bgm.mp3'));
    play();
  }

  void play() {
    _player.resume();
    _isPlaying = true;
  }

  void pause() {
    _player.pause();
    _isPlaying = false;
  }

  void toggle() {
    _isPlaying ? pause() : play();
  }
}
