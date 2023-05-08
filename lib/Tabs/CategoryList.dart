import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final Map<String, String> categories;

  CategoryList({
    Key? key,
    required this.categories,
  }) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'more',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250, // adjust this value to your desired height
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: categories.entries.map((entry) {
              String categoryName = entry.key;
              String imageAssetPath = entry.value;

              return Container(
                width: 140,
                margin: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      imageAssetPath,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      categoryName,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
