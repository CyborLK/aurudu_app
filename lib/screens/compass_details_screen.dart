import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class CompassDetailsScreen extends StatelessWidget {
  const CompassDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'ÈYdj n,d.kak',
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
            'Compass Details Screen\nDetails about the compass can go here.',
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