import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/timer_display.dart';
import '../../widgets/rounded_red_button.dart';
import '../nakath_screens/nakath2_screen.dart';

class Nakath1Screen extends StatelessWidget {
  const Nakath1Screen({super.key});

  String formatDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final Duration initialCountdown = const Duration(
      days: 27,
      hours: 14,
      minutes: 9,
      seconds: 59,
    );

    return Scaffold(
      appBar: const CustomAppBar(title: 'නව පදවැලීම'),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 12),
                const Text(
                  'නව පදවැලීම',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'TharuDigitalNikini',
                    color: Color(0xFFBB0404),
                  ),
                ),
                const SizedBox(height: 16),

                // ⏳ Countdown Timer
                TimerDisplay(
                  initialTimeLeft: initialCountdown,
                  formatDigits: formatDigits,
                ),

                const SizedBox(height: 20),

                const Text(
                  'අලුත් අවුරුදු පදවැලීම පැවැත්වෙන්නේ අප්‍රේල් 13 වන දින සවස 6.00 ටයි. '
                  'අදිනි නව පදවැලීමේ මොහොත වේ.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'TharuDigitalNikini',
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 20),

                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/nakath1.png',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'මෙම මොහොත සියලු අලුත්කම් ආරම්භ කිරීමට අඳින්නට සුදුසුය. '
                  'මේ මොහොතේ වාසනාවන්ත කටයුතු ආරම්භ කිරීමට උපරිම වාසියක් ඇත.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'TharuDigitalNikini',
                    color: Color(0xFFBB0404),
                  ),
                ),

                const SizedBox(height: 24),

                // ❤️ Custom Rounded Red Button
                RoundedRedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Nakath2Screen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
