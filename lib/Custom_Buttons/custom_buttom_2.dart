import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final Color borderColor;
  final Color textColor;
  final Color fillColor;
  final String text;
  final VoidCallback onPress;
  final bool isSelected;

  const CustomButton2({
    Key? key,
    required this.borderColor,
    required this.textColor,
    required this.fillColor,
    required this.text,
    required this.onPress,
    required this.isSelected,
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
        child: Row(
          children: [
            Icon(isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
            color: textColor,),
            SizedBox(width: 10.0),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
