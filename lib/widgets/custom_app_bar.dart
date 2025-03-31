import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final bool isMuted;
  final VoidCallback onToggleMute;

  const CustomAppBar({
    super.key,
    required this.isMuted,
    required this.onToggleMute,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/background.jpg'), // background.jpg
          fit: BoxFit.cover,
        ),
        /*border: Border(
          bottom: BorderSide(color: Colors.purple.shade200, width: 2),
          top: BorderSide(color: Colors.purple.shade200, width: 2),
        ),*/
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 24), // Placeholder for symmetry
          Text(
            'kele;a iSÜgqj 2025',
            style: TextStyle(
              fontFamily: 'TharuDigitalNikini',
              fontSize: 24,
              color: const Color(0xFFBB0404),
              fontWeight: FontWeight.bold,
              shadows: const [
                Shadow(color: Colors.black12, offset: Offset(1, 1)),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isMuted ? Icons.volume_off : Icons.volume_up,
              color: Colors.grey[800],
              size: 28,
            ),
            onPressed: onToggleMute,
          ),
        ],
      ),
    );
  }
}
