import 'package:flutter/material.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import '../widgets/custom_app_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late Timer _timer;
  Duration _timeLeft = const Duration(days: 27, hours: 14, minutes: 9, seconds: 59);
  bool isMuted = false;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _timeLeft -= const Duration(seconds: 1);
      });
    });

    _playMusic();
  }

  Future<void> _playMusic() async {
    await _audioPlayer.setSource(AssetSource('audio/new_year_music.mp3'));
    await _audioPlayer.setReleaseMode(ReleaseMode.loop);
    await _audioPlayer.setVolume(1); // ensure volume starts unmuted
    await _audioPlayer.resume();
  }

  void _toggleMute() {
    setState(() {
      isMuted = !isMuted;
      _audioPlayer.setVolume(isMuted ? 0 : 1);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  String formatDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final days = formatDigits(_timeLeft.inDays);
    final hours = formatDigits(_timeLeft.inHours % 24);
    final minutes = formatDigits(_timeLeft.inMinutes % 60);
    final seconds = formatDigits(_timeLeft.inSeconds % 60);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Full background
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Content over background
          SafeArea(
            child: Column(
              children: [
                // Fixed AppBar
                CustomAppBar(
                  isMuted: isMuted,
                  onToggleMute: _toggleMute,
                ),

                // Scrollable content
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'මිලිය නාකන',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'TharuDigitalNikini',
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        _buildCard(
                          Column(
                            children: [
                              const Text(
                                'දුන්නා කාලය - අවසන් වෙයි:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'TharuDigitalNikini',
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '$days : $hours : $minutes : $seconds',
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'TharuDigitalNikini',
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'දින   පැය   විනාඩි   තත්පර',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'TharuDigitalNikini',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

                        _buildCard(
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/couple.png',
                                height: 80,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'නව වසර 2025',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red,
                                  fontFamily: 'TharuDigitalNikini',
                                ),
                              ),
                            ],
                          ),
                        ),

                        _buildCard(
                          Row(
                            children: const [
                              Icon(Icons.explore, color: Colors.white, size: 40),
                              SizedBox(width: 10),
                              Text(
                                'දිශාව බලන්න.',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontFamily: 'TharuDigitalNikini',
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          'ඔබට සුබ නව වසරක් වේවා !',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.red,
                            fontFamily: 'TharuDigitalNikini',
                          ),
                        ),

                        const SizedBox(height: 20),

                        Column(
                          children: [
                            Image.asset('assets/images/dev_logo.png', height: 60),
                            const Text(
                              'Developed by:\nNadun Daluwatta',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text('nadundaluwatta26@gmail.com'),
                            const Text('www.nadundaluwatta.me'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Widget child) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[700],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
