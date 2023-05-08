import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.home,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.rice_bowl_outlined,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.water_outlined,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.scale_outlined,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
