import 'package:ai_doctor/Screens/ConsultScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ai_Doctor());
}

class Ai_Doctor extends StatelessWidget {
  const Ai_Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ConsultScreen(),
      ),
    );
  }
}
