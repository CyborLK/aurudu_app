import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/timer_display.dart';
import '../../widgets/rounded_red_button.dart';
import '../../widgets/rounded_white_button.dart';
import '../nakath_screens/nakath4_screen.dart';
import '../nakath_screens/nakath6_screen.dart';

class Nakath5Screen extends StatelessWidget {
  const Nakath5Screen({super.key});

  String formatDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {

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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),

              const Text(
                'wdydr msiSu',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'TharuDigitalNikini',
                  color: Color(0xFFBB0404),
                ),
              ),

              const SizedBox(height: 16),

              TimerDisplay(
                targetDateTime: DateTime(2025, 4, 14, 04, 04), // Apr 14, 2025 at 4:04 AM
              ),

              const SizedBox(height: 20),

              const Text(
                'wfm%a,a ui 14 jk i÷od mQ¾jNd. 04\'04g ;U j¾K \njia;%dNrKfhka ieriS ol=Kq ÈYdj n,d ,sma ne| .sks fud<jd lsß n;la o leú,s j¾.hla o § lsß iy ú,| o ms<sfh, lr.ekSu uekú\'',
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
                  'assets/images/nakath5.png',
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

              // White and Red buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedWhiteButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Nakath4Screen(),
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
                          builder:
                              (context) =>
                                  const Nakath6Screen(), //change this to the next screen
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
