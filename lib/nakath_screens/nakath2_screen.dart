import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/timer_display.dart';
import '../../widgets/rounded_red_button.dart';
import '../../widgets/rounded_white_button.dart';
import '../nakath_screens/nakath1_screen.dart';
import '../nakath_screens/nakath3_screen.dart';

class Nakath2Screen extends StatelessWidget {
  const Nakath2Screen({super.key});

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
      appBar: const CustomAppBar(title: 'පරණ අවුරුද්ද අවසන් වීම'),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),

              const Text(
                'පරණ අවුරුද්ද අවසන් වීම',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'TharuDigitalNikini',
                  color: Color(0xFFBB0404),
                ),
              ),

              const SizedBox(height: 16),

              TimerDisplay(
                initialTimeLeft: initialCountdown,
                formatDigits: formatDigits,
              ),

              const SizedBox(height: 20),

              const Text(
                'අප්‍රේල් 13 වන දින සවස 6ට පසුව පරණ අවුරුද්ද නිමවෙයි. '
                'මේ මොහොතේ සිට අවුරුද්ද අවසන් වූවේ ය.',
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
                  'assets/images/nakath2.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'මේ මොහොත සන්සුන්ව පිළිගැනීම අරමුණු කරමින් '
                'ධර්ම සවන් අදින්නට, පුණ්‍ය කර්ම සිදු කරන්නට සුදුසු වේ.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'TharuDigitalNikini',
                  color: Color(0xFFBB0404),
                ),
              ),

              const SizedBox(height: 24),

              // 🔘 White and 🔴 Red buttons side by side
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedWhiteButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Nakath1Screen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  RoundedRedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Nakath3Screen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
