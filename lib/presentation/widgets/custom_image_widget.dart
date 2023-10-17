import 'package:flutter/material.dart';

Widget customAssetImage(String path) {
  return Image.asset(
    path,
    fit: BoxFit.fill,
    errorBuilder: (context, error, stackTrace) => Container(
      color: const Color.fromARGB(255, 224, 224, 224),
    ),
  );
}

Widget customNetworkImage(String path) {
  return Image.network(
    path,
    errorBuilder: (context, error, stackTrace) => Container(
      color: const Color.fromARGB(255, 224, 224, 224),
    ),
  );
}
