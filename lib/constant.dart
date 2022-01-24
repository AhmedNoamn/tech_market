import 'package:flutter/material.dart';

const Color kBlueClr = Color(0xFF0001FC);
const Color kDarkBlueClr = Color(0xff415A93);
const Color kWhiteClr = Color(0xFFFFFFFF);
const Color kYellowClr = Color(0xFFFBDF00);
const Color kGreyClr = Color(0xFFA7A9BE);
const Color kDarkClr = Color(0xFF0A1034);
const Color kBabyBlueClr = Color(0xFFE0ECF8);

kPadding1(double horizontal, double vertical) =>
    EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);

const kPadding10 = EdgeInsets.symmetric(horizontal: 10, vertical: 10);
const kPadding15 = EdgeInsets.symmetric(horizontal: 15, vertical: 15);
const kPadding20 = EdgeInsets.symmetric(horizontal: 20, vertical: 20);

BorderRadius circularRadius15 = BorderRadius.circular(15);
BorderRadius circularRadius10 = BorderRadius.circular(10);
BorderRadius circularRadius(double radius) => BorderRadius.circular(radius);

// convert color to material color
Map<int, Color> colorMap = {
  50: Color.fromRGBO(147, 205, 72, .1),
  100: Color.fromRGBO(147, 205, 72, .2),
  200: Color.fromRGBO(147, 205, 72, .3),
  300: Color.fromRGBO(147, 205, 72, .4),
  400: Color.fromRGBO(147, 205, 72, .5),
  500: Color.fromRGBO(147, 205, 72, .6),
  600: Color.fromRGBO(147, 205, 72, .7),
  700: Color.fromRGBO(147, 205, 72, .8),
  800: Color.fromRGBO(147, 205, 72, .9),
  900: Color.fromRGBO(147, 205, 72, 1),
};

MaterialColor primarySwatchDarkColor = MaterialColor(0xFF0A1034, colorMap);
MaterialColor primarySwatchLightColor = MaterialColor(0xFFFFFFFF, colorMap);

//dark and light theme
class Themes {
  static final light = ThemeData(
    primarySwatch: primarySwatchLightColor,
    backgroundColor: kWhiteClr,
    primaryColor: kWhiteClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primarySwatch: primarySwatchDarkColor,
    backgroundColor: kDarkClr,
    primaryColor: kDarkClr,
    brightness: Brightness.dark,
  );
}

double heightSize(BuildContext context, double fraction) {
  if (fraction <= 0) fraction = 1;
  final mediaQuery = MediaQuery.of(context);
  double height = mediaQuery.size.height;
  fraction =
      (height - (mediaQuery.padding.top + AppBar().preferredSize.height)) /
          fraction;

  return fraction;
}

double widthSize(BuildContext context, double fraction) {
  if (fraction <= 0) fraction = 1;
  final mediaQuery = MediaQuery.of(context);
  double width = mediaQuery.size.width;
  return width / fraction;
}

TextStyle get headTitleStyle {
  return TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 8,
    fontFamily: 'PTMono',
    color: kWhiteClr,
    fontSize: 42,
  );
}

TextStyle get subTitleStyle {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'PTMono',
    color: kWhiteClr,
    fontSize: 24,
  );
}

TextStyle screenTitleStyle(double fontSize) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'PTMono',
    color: kDarkClr,
    fontSize: fontSize,
  );
}

TextStyle fieldTextStyle(Color textColor) {
  return TextStyle(
    fontWeight: FontWeight.w500,
    color: textColor,
    fontSize: 18,
  );
}

TextStyle get textStyle16 {
  return TextStyle(
    color: kWhiteClr,
    fontSize: 16,
  );
}

TextStyle get textStyle14 {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: kBlueClr,
    fontSize: 14,
  );
}

TextStyle get textStyle12 {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: kGreyClr,
    fontSize: 12,
  );
}
