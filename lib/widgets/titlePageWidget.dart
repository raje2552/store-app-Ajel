import 'package:flutter/material.dart';
class TitlePage extends StatelessWidget {
  TitlePage({super.key ,required this.title ,
    this.colorText = Colors.black ,this.fontSizeText = 16,
    this.fontWeightText = FontWeight.normal,
    required this.FamilyForText,
    this.letterSpacingChart = 0
  });

  String title;
  double fontSizeText;
  Color colorText;
  FontWeight fontWeightText;
  String FamilyForText;
  double letterSpacingChart;


  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
      color: colorText,
      fontWeight: fontWeightText,
      fontFamily: FamilyForText,
      fontSize: fontSizeText,
      letterSpacing: letterSpacingChart
    ),
    );
  }
}
