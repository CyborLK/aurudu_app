import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class NakathScreen extends StatelessWidget {
  const NakathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'kele;a iSÜgqj 2025',
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Couple Details Screen\nDetails about the couple can go here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white, // Already white
              fontFamily: 'TharuDigitalNikini',
            ),
          ),
        ),
      ),
    );
  }
}