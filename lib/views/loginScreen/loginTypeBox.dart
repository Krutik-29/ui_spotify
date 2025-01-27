import 'package:flutter/material.dart';

class LoginTypeBox extends StatefulWidget {
  final String text;
  final String? path;
  final Color color;
  final Color textColor;
  final bool enableBorder;
  const LoginTypeBox({super.key, required this.text, this.path, required this.color, required this.textColor, required this.enableBorder});

  @override
  State<LoginTypeBox> createState() => _LoginTypeBoxState();
}

class _LoginTypeBoxState extends State<LoginTypeBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(width: 0,
        color: widget.enableBorder == false ?Colors.black : Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(5),
      height: 50,
      width: 330,
      child: Stack(
        alignment: AlignmentDirectional.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget.path == null ? Container():Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              widget.path ?? '',
              height: 35,
              width: 35,
            ),
          ),
          Text(widget.text,style:
            TextStyle(
              color: widget.textColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
              fontFamily: 'Spotify'
            ),
          textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
