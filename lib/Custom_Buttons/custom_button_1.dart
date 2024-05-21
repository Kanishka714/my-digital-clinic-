import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  final Color borderColor;
  final Color textColor;
  final Color fillColor;
  final String text;
  final VoidCallback onPress;

  const CustomButton1({
    Key? key,
    required this.borderColor,
    required this.textColor,
    required this.fillColor,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: borderColor),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: fillColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
