import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChoiceContainer extends StatelessWidget {
  String categoryName;
  bool isSelected;
  ChoiceContainer(
      {required this.categoryName, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          border:
              Border.all(color: isSelected ? Colors.black : Color(0xffdcdcdc))),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}
