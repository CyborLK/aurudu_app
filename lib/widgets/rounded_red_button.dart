import 'package:flutter/material.dart';

class RoundedRedButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RoundedRedButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFBB0404),
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
        'B,Õ kel;', // Built-in label
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'TharuDigitalNikini',
          color: Colors.white,
        ),
      ),
    );
  }
}
