import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFBB0404),
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData( // <-- This line changes the back button color
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontFamily: 'TharuDigitalNikini',
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
