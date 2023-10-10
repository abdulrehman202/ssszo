import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget progressLoader() {
  return const Center(child: CircularProgressIndicator());
}

AppBar simpleAppBar({required String title}) {
  return AppBar(
    title: Text(title),
  );
}

AppBar customAppBar(
    {required String title, required List<Widget> actionWidgets}) {
  return AppBar(
    title: Text(title),
    actions: actionWidgets,
  );
}
