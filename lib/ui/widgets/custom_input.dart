import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  void Function(String)? onChange;
   CustomInput({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        onChanged: onChange,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          icon: Icon(Icons.text_fields,size: 32, color: Colors.white,),
          hintText: 'Enter Word here...',
          fillColor: Colors.white,
          filled: true,
        ),

      ),
    );
  }
}
