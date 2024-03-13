import 'package:flutter/material.dart';
import 'package:terms_and_condition/privacy_policy.dart';
import 'package:terms_and_condition/terms_and_condition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrivacyPolicy(),
    );
  }
}
