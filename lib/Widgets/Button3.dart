import 'package:ai_doctor/Screens/ConsultScreen.dart';
import 'package:ai_doctor/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  const Button3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      //color: Colors.blue,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(255, 236, 236, 236),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConsultScreen()),
          );
        },
        icon: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ),
    );
  }
}
