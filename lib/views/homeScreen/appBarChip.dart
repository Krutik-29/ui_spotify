import 'package:flutter/material.dart';

class AppBarChip extends StatelessWidget {
  final Color fontColor;
  final Color chipBackgroundColor;
  final String appBarChip;
  const AppBarChip({super.key, required this.fontColor, required this.chipBackgroundColor, required this.appBarChip});

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: fontColor
      ),
      backgroundColor: chipBackgroundColor,//selectedAppBarChip == appBarChip ? AppTheme.primaryColor : AppTheme.surfaceColor,
      //padding: const EdgeInsets.all(3),
      label: Text(appBarChip), //passing filter variable into chip widget
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      side: BorderSide.none,
    );
  }
}
