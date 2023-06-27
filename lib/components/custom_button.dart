import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final TextStyle textStyle;
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({super.key, 
    required this.text,
    this.icon,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 16,
    ),
    this.color = const Color.fromRGBO(234, 80, 21, 1),
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
      ),
      child: SizedBox.expand(
        child: TextButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: Colors.white,
                ),
              SizedBox(width: icon != null ? 8 : 0),
              Text(
                text,
                style: textStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
