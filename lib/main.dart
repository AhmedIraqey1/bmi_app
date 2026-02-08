import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/bmi/screens/bmi_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Bmi());
  }
}
