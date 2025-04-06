import 'package:flutter/material.dart';

class RoundedWhiteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RoundedWhiteButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: Color(0xFFBB0404), // Red border
          width: 2,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 32,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: const Text(
        'fmr kel;', // Fixed label
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'TharuDigitalNikini',
          color: Color(0xFFBB0404), // Red label
        ),
      ),
    );
  }
}
