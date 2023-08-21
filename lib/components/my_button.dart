import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String title;
  final Color color;
  final VoidCallback onpress;

   const MyButton({Key? key,
     required this.title,
     this.color = const Color(0xffa5a5a5),
     required this.onpress
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color
            ),
            child: Center(child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
        ),
      ),
    );
  }
}
