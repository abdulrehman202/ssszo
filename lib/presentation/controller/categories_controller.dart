import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreenController extends GetxController {
  List<String> categoriesList = [
    'Men',
    'Women',
    'Kids',
    'Beauty',
    'New Arrivals',
    'Newbies'
  ];

  List<Color> colorsList = [
    const Color(0xffcee3ff),
    const Color(0xfff1d6cd),
    const Color(0xffffe7c5),
    const Color(0xfff7b6be),
    const Color(0xffd6bab6), //ffbece
    const Color(0xffffbece), //ffbece
  ];
}
