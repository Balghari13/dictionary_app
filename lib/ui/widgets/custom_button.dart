import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
   CustomButtom({super.key,
    this.backgroundColor=Colors.blue,
    required this.title, required this.onPressed});

  final Color backgroundColor;
  final Widget title;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor)
        ),
        child: title);
  }
}
