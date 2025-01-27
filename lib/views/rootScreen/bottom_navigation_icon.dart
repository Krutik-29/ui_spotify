

import 'package:flutter/material.dart';

class BottomNavigationIcon extends StatelessWidget {

  final IconData icon;
  final String text;
  const BottomNavigationIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 10,),
        const SizedBox(height: 2,),
        Text(text)
      ],
    );
  }
}
