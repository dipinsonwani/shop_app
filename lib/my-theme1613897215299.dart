import 'package:flutter/material.dart';

import 'helpers/custom_route.dart';

final ThemeData myTheme = ThemeData(
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: CustomPageTransitionBuilder(),
  }),
  primarySwatch: MaterialColor(4288749147, {
    50: Color(0xfffbeaf2),
    100: Color(0xfff7d4e4),
    200: Color(0xffefa9ca),
    300: Color(0xffe77eaf),
    400: Color(0xffdf5394),
    500: Color(0xffd72879),
    600: Color(0xffac2061),
    700: Color(0xff811849),
    800: Color(0xff561031),
    900: Color(0xff2b0818)
  }),
  brightness: Brightness.light,
  primaryColor: Color(0xffa11e5b),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(0xfff7d4e4),
  primaryColorDark: Color(0xff811849),
  accentColor: Color(0xffd72879),
  accentColorBrightness: Brightness.dark,
  canvasColor: Color(0xfffafafa),
  scaffoldBackgroundColor: Color(0xfffafafa),
  bottomAppBarColor: Color(0xffffffff),
  cardColor: Color(0xffffffff),
  dividerColor: Color(0x1f000000),
  highlightColor: Color(0x66bcbcbc),
  splashColor: Color(0x66c8c8c8),
  selectedRowColor: Color(0xfff5f5f5),
  unselectedWidgetColor: Color(0x8a000000),
  disabledColor: Color(0x61000000),
  buttonColor: Color(0xffe0e0e0),
  toggleableActiveColor: Color(0xffac2061),
  secondaryHeaderColor: Color(0xfffbeaf2),
  textSelectionColor: Color(0xffefa9ca),
  cursorColor: Color(0xff4285f4),
  textSelectionHandleColor: Color(0xffe77eaf),
  backgroundColor: Color(0xffefa9ca),
  dialogBackgroundColor: Color(0xffffffff),
  indicatorColor: Color(0xffd72879),
  hintColor: Color(0x8a000000),
  errorColor: Color(0xffd32f2f),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88.0,
    height: 36.0,
    padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0.0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffd1708a),
    disabledColor: Color(0xffc7c7c7),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    colorScheme: ColorScheme(
      primary: Color(0xffa11e5b),
      primaryVariant: Color(0xff811849),
      secondary: Color(0xffd72879),
      secondaryVariant: Color(0xff811849),
      surface: Color(0xffffffff),
      background: Color(0xffefa9ca),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    display4: TextStyle(
      color: Color(0x8a000000),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0x8a000000),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0x8a000000),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0x8a000000),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xdd000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xdd000000),
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0x8a000000),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subtitle: TextStyle(
      color: Color(0xff000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xff000000),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: TextTheme(
    display4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xffffffff),
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subtitle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  accentTextTheme: TextTheme(
    display4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xffffffff),
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subtitle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    hasFloatingPlaceholder: true,
    isDense: false,
    contentPadding:
        EdgeInsets.only(top: 12.0, bottom: 12.0, left: 0.0, right: 0.0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: IconThemeData(
    color: Color(0xdd000000),
    opacity: 1.0,
    size: 24.0,
  ),
  primaryIconTheme: IconThemeData(
    color: Color(0xffffffff),
    opacity: 1.0,
    size: 24.0,
  ),
  accentIconTheme: IconThemeData(
    color: Color(0xffffffff),
    opacity: 1.0,
    size: 24.0,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Color(0xffa11e5b),
    inactiveTrackColor: Color(0x3da11e5b),
    disabledActiveTrackColor: Color(0x52811849),
    disabledInactiveTrackColor: Color(0x1f811849),
    activeTickMarkColor: Color(0x8af7d4e4),
    inactiveTickMarkColor: Color(0x8aa11e5b),
    disabledActiveTickMarkColor: Color(0x1ff7d4e4),
    disabledInactiveTickMarkColor: Color(0x1f811849),
    thumbColor: Color(0xffa11e5b),
    disabledThumbColor: Color(0x52811849),
    thumbShape: RoundSliderThumbShape(),
    overlayColor: Color(0x29a11e5b),
    valueIndicatorColor: Color(0xffa11e5b),
    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
    showValueIndicator: ShowValueIndicator.onlyForDiscrete,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 8.0, right: 8.0),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3da11e5b),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0.0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0.0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
);
