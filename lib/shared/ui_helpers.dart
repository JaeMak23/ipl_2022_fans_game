import 'package:flutter/material.dart';

class HorizontalSpace {
  static const Widget tiny = SizedBox(
    width: 5.0,
  );
  static const Widget small = SizedBox(
    width: 10.0,
  );
  static const Widget regular = SizedBox(
    width: 18.0,
  );
  static const Widget medium = SizedBox(
    width: 25.0,
  );
  static const Widget large = SizedBox(
    width: 50.0,
  );
}

class VerticallSpace {
  static const Widget tiny = SizedBox(
    height: 5.0,
  );
  static const Widget small = SizedBox(
    height: 10.0,
  );
  static const Widget regular = SizedBox(
    height: 18.0,
  );
  static const Widget medium = SizedBox(
    height: 25.0,
  );
  static const Widget large = SizedBox(
    height: 50.0,
  );
}

class Screen {
  static Size size(BuildContext context) => MediaQuery.of(context).size;
  static double width(BuildContext context) => size(context).width;
  static double height(BuildContext context) => size(context).height;

  double heightPercentage(BuildContext context, {double percentage = 1}) =>
      height(context) * percentage;

  double widthPercentage(BuildContext context, {double percentage = 1}) =>
      width(context) * percentage;
}
//MediaQuery
// Size size(BuildContext context)=> MediaQuery.of(context).size;
// double screenWidth(BuildContext context)=> size(context).width;
// double screenHeight(BuildContext context)=> size(context).height;

// double screenHeightPercentage(BuildContext context,{double percentage=1})=>
// screenHeight(context)*percentage;

// double screenWidthPercentage(BuildContext context,{double percentage=1})=>
// screenWidth(context)*percentage;
