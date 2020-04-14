import 'package:flutter/material.dart';

Color backgroundColor = Colors.grey.shade100;
Color upperShadow = Colors.white;
Color shadowColor = Colors.black.withOpacity(0.075);
Color textMainColor = Colors.grey.shade600;

BoxDecoration boxDecoration = BoxDecoration(
  shape: BoxShape.circle,
  color: backgroundColor,
  boxShadow: [
    BoxShadow(
      color: shadowColor,
      offset: Offset(10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: upperShadow,
      offset: Offset(-10, -10),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration invertedBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: shadowColor,
  boxShadow: [
    BoxShadow(
      color: upperShadow,
      offset: Offset(3, 3),
      blurRadius: 3,
      spreadRadius: -3,
    ),
  ],
);
