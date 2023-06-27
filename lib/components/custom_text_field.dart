import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextStyle textStyle;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.placeholder,
    required this.textStyle,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Color.fromRGBO(33, 33, 33, 1)),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          // autofocus: true,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: placeholder,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
              borderSide: BorderSide(
                color: Color.fromRGBO(217, 217, 217, 1),
                width: 1,
              ),
            ),
          ),
          style: textStyle,
        ),
      ],
    );
  }
}
