import 'package:ai_doctor/Screens/HomeScreen.dart';
import 'package:ai_doctor/Widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/AiGen.png',
            fit: BoxFit.cover,
            width: 400,
            height: 400,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AI doctor',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromARGB(255, 49, 217, 240), Color.fromARGB(255, 208, 33, 243)],
                    ).createShader(const Rect.fromLTWH(
                        100, 55, 200, 70)), // adjust the dimensions as needed
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'It has the ability to diagnose your disease\n with great accuracy and trained with the\n history of your previous diseases and symptoms.',
                style: TextStyle(
                  fontSize: 15,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromARGB(255, 49, 217, 240), Color.fromARGB(255, 208, 33, 243)],
                    ).createShader(const Rect.fromLTWH(
                        100, 55, 200, 70)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button1()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
