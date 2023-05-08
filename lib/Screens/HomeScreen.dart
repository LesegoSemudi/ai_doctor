import 'package:ai_doctor/Tabs/CategoryList.dart';
import 'package:ai_doctor/Widgets/Bottomnav.dart';
import 'package:ai_doctor/Widgets/Button2.dart';
import 'package:ai_doctor/Widgets/Button3.dart';
import 'package:ai_doctor/Widgets/Categories.dart';
import 'package:ai_doctor/Widgets/CustomAppBar.dart';
import 'package:ai_doctor/Widgets/SearchBar.dart';
import 'package:ai_doctor/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const BottomNav(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SearchBar(),
            const SizedBox(
              height: 20,
            ),
            CategoryList(categories: categories),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    'Other Services',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'No Idea What\'s Wrong?\nGet examanied by a general doctor',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Button3()
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
