import 'package:flutter/material.dart';
import 'dart:async';

class TimerDisplay extends StatefulWidget {
  final Duration initialTimeLeft;
  final String Function(int) formatDigits;

  const TimerDisplay({
    super.key,
    required this.initialTimeLeft,
    required this.formatDigits,
  });

  @override
  State<TimerDisplay> createState() => _TimerDisplayState();
}

class _TimerDisplayState extends State<TimerDisplay> {
  late Duration _timeLeft;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timeLeft = widget.initialTimeLeft;

    // Start the timer to update every second
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _timeLeft -= const Duration(seconds: 1);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final days = widget.formatDigits(_timeLeft.inDays);
    final hours = widget.formatDigits(_timeLeft.inHours % 24);
    final minutes = widget.formatDigits(_timeLeft.inMinutes % 60);
    final seconds = widget.formatDigits(_timeLeft.inSeconds % 60);

    return Column(
      children: [
        Text(
          '$days : $hours : $minutes : $seconds',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFBB0404),
            fontFamily: 'Gafata-Regular',
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          '  Èk     meh    úkdä   ;;amr',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'TharuDigitalNikini',
            color: Color(0xFFBB0404),
          ),
        ),
      ],
    );
  }
}