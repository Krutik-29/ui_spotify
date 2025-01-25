import 'package:flutter/material.dart';

class LoginTypeBox extends StatefulWidget {
  final String text;
  final String? path;
  final Color color;
  const LoginTypeBox({super.key, required this.text, required this.color, this.path});

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
        color: Colors.grey),
        borderRadius: BorderRadius.circular(50),

      ),
      padding: const EdgeInsets.all(5),
      height: 50,
      width: 330,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            widget.path ?? '',
            height: 35,
            width: 35,
          ),
          // const SizedBox(
          //   width: 5,
          // ),
          Expanded(
            child: Text(widget.text,style:
              const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}
