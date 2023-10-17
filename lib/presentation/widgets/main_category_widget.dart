import 'package:flutter/material.dart';

class MainCategoryWidget extends StatelessWidget {
  String categoryName;
  Color color;
  MainCategoryWidget(
      {required this.categoryName,
      this.color = const Color(0xffcee3ff),
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35.0),
      margin: const EdgeInsets.all(2.0),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 100,
              child: Text(
                categoryName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
          const Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}
