import 'package:flutter/material.dart';

class LoginTypeBox extends StatefulWidget {
  final String text;
  final String? path;
  final Color color;
  const LoginTypeBox({super.key, required this.text, required this.path, required this.color});

  @override
  State<LoginTypeBox> createState() => _LoginTypeBoxState();
}

class _LoginTypeBoxState extends State<LoginTypeBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(5),
      height: 30,
      width: 100,
      child: Row(
        children: [
          Image.asset(
            widget.path ?? '',
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(widget.text)
        ],
      ),
    );
  }
}
