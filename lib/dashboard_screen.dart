import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/timer_display.dart';
import '../screens/timer_details_screen.dart';
import 'screens/nakath_screen.dart';
import '../screens/compass_details_screen.dart';
import '../data/nakath_data.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String formatDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const CustomAppBar(title: 'kele;a iSÜgqj 2025'),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'ó,Õ kel;',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'TharuDigitalNikini',
                              color: Color(0xFFBB0404),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 5),

                        // Timer Card
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => const TimerDetailsScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: _buildCard(
                            SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  
                                  const SizedBox(height: 12),
                                  Builder(
                                    builder: (context) {
                                      final now = DateTime.now();
                                      final nextNakath =
                                          nakathEvents
                                              .where(
                                                (e) => e.dateTime.isAfter(now),
                                              )
                                              .toList()
                                            ..sort(
                                              (a, b) => a.dateTime.compareTo(
                                                b.dateTime,
                                              ),
                                            );
                                      final upcoming =
                                          nextNakath.isNotEmpty
                                              ? nextNakath.first
                                              : null;

                                      return Column(
                                        children: [
                                          Text(
                                            upcoming?.title ??
                                                'නව නකත් සිදුවීමක් නැත',
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'TharuDigitalNikini',
                                              color: Color(0xFFBB0404),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 12),
                                          if (upcoming != null)
                                            TimerDisplay(
                                              targetDateTime: upcoming.dateTime,
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Couple Card
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NakathScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: _buildCard(
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/couple.png',
                                  height: 80,
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  'kele;a iSÜgqj 2025',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFFBB0404),
                                    fontFamily: 'TharuDigitalNikini',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Compass Card
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => const CompassDetailsScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: _buildCard(
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/compass.png',
                                  width: 40,
                                  height: 40,
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  'ÈYdj n,d .kak\'',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFFBB0404),
                                    fontFamily: 'TharuDigitalNikini',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Center(
                          child: Text(
                            'iqn w¨;a wjqreoaola fõjd æ',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFFBB0404),
                              fontFamily: 'TharuDigitalNikini',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Centered Developer Info
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/nd_logo.png',
                                height: 60,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Developed by:\nNadun Daluwatta',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBB0404),
                                ),
                              ),
                              const Text(
                                'nadundaluwatta26@gmail.com',
                                style: TextStyle(color: Color(0xFFBB0404)),
                              ),
                              const Text(
                                'www.nadundaluwatta.me',
                                style: TextStyle(color: Color(0xFFBB0404)),
                              ),
                            ],
                          ),
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
        color: const Color(0xFFFAE3C3),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFBB0404), width: 2),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(2, 4)),
        ],
      ),
      child: child,
    );
  }
}
