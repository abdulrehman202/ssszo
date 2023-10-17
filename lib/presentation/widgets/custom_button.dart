import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ssszo/presentation/managers/colors_manager.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  Color color;
  double width;
  CustomButton(
      {required this.callback,
      required this.text,
      this.color = ColorManager.primary_color,
      this.width = 0,
      super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        margin: EdgeInsets.all(5.0),
        width: width * 0.9,
        child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: const StadiumBorder(),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
