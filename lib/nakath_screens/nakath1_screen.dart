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
      appBar: const CustomAppBar(title: 'kele;a iSÜgqj 2025'),
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
                  'kj i| ne,Su',
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
                  'wNskj pkaø j¾Ih i|yd ud¾;= ui 30 jk bßod Èk o wNskj iQ¾h j¾Ih i|yd uehs ui 1 jk n%yiam;skaod  Èk o" kj i| ne,Su uekú\'',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'FM_ARJUN',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
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
                  'ie\'hq( by; ish¿ kele;a fõ,djka ms<sfh, lr we;af;a › ,xld iïu; Trf,daiq fõ,djg wkqj ixialD;sl lghq;= fomd¾;fïka;=fõ isxy, w¿;a wjqreÿ kele;a lñgqj úisks\'',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'TharuDigitalNikini',
                    color: Color(0xFFBB0404),
                  ),
                ),

                const SizedBox(height: 24),

                // Custom Rounded Red Button
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
