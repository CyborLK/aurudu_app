import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/timer_display.dart';
import '../screens/timer_details_screen.dart';
import '../screens/couple_details_screen.dart';
import '../screens/compass_details_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Duration _timeLeft = const Duration(
    days: 27,
    hours: 14,
    minutes: 9,
    seconds: 59,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String formatDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
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
                const CustomAppBar(
                  title: 'kele;a iSÜgqj 2025',
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
                            'ó,Õ kel;',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'apex008-FreeTypo',
                              color:Color(0xFFBB0404), 
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // First Card (Timer Card) - Using TimerDisplay
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TimerDetailsScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: _buildCard(
                            Column(
                              children: [
                                const Text(
                                  'mqKH ld,h - wmrNd. 08\'57 g',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'apex008-FreeTypo',
                                    color:Color(0xFFBB0404), 
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TimerDisplay(
                                  initialTimeLeft: _timeLeft,
                                  formatDigits: formatDigits,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Second Card (Couple Card) - Clickable
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CoupleDetailsScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: _buildCard(
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/couple.png',
                                  height: 80,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'kele;a iSÜgqj 2025',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color:Color(0xFFBB0404), 
                                    fontFamily: 'TharuDigitalNikini',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Third Card (Compass Card) - Clickable
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CompassDetailsScreen(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: _buildCard(
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/compass.png',
                                  width: 40,
                                  height: 40,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    'ÈYdj n,d .kak\'',
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color:Color(0xFFBB0404), 
                                      fontFamily: 'TharuDigitalNikini',
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          'iqn w¨;a wjqreoaola fõjd æ',
                          style: TextStyle(
                            fontSize: 24,
                            color:Color(0xFFBB0404), 
                            fontFamily: 'TharuDigitalNikini',
                          ),
                        ),

                        const SizedBox(height: 20),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/nd_logo.png',
                              height: 60,
                            ),
                            const Text(
                              'Developed by:\nNadun Daluwatta',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xFFBB0404), 
                              ),
                            ),
                            const Text(
                              'nadundaluwatta26@gmail.com.',
                              style: TextStyle(
                                color:Color(0xFFBB0404), 
                              ),
                            ),
                            const Text(
                              'www.nadundaluwatta.me',
                              style: TextStyle(
                                color:Color(0xFFBB0404), 
                              ),
                            ),
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