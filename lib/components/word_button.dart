import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class WordButton extends StatelessWidget {
  const WordButton({
    super.key,
    required this.buttonTitle,
    this.onPress,
    this.color = Colors.blue,
  });

  final VoidCallback? onPress;
  final String buttonTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 3.0,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(4.0),
      ),
      onPressed: onPress,
      child: Text(
        buttonTitle,
        textAlign: TextAlign.center,
        style: kWordButtonTextStyle,
      ),
    );
  }
}
