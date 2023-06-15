import 'package:dictionary_app/ui/theme.dart';
import 'package:flutter/material.dart';

import 'landing_screen.dart';


class DictionaryApp extends StatelessWidget {
  const DictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme,
      home: DictionaryScreen(),
    );
  }
}
