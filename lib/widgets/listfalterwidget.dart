import 'package:flutter/material.dart';

class Contear_for_item_falter extends StatelessWidget {
  Contear_for_item_falter(
      {super.key, required this.text, this.color_container = Colors.black});

  Color color_container;
  Text text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsetsGeometry.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            border: Border.all(
              color: color_container,
              width:BorderSide.strokeAlignOutside,
            ),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
              child: text
          ),
        ),
      ),
    );
  }
}
