import 'package:flutter/material.dart';

class Style {
  // margin/padding sizes
  static const double spacingExtraSmall = spacingNormal / 4; // 4
  static const double spacingSmall = spacingNormal / 2; // 8
  static const double spacingNormal = 16.0;
  static const double spacingMedium = spacingNormal * 1.5; // 24
  static const double spacingLarge = spacingNormal * 2.0; // 32
  static const double spacingExtraLarge = spacingNormal * 4.0; // 48

  // text scale factors
  static const double sizeTiny = 0.625; // 10
  static const double sizeMini = 0.75; // 12
  static const double sizeSmall = 0.875; // 14
  static const double sizeNormal = 1.0; // 16
  static const double sizeSubtitle = 1.5; // 24
  static const double sizeTitle = 2; // 32

  static const double borderRadiusMedium = 24.0;
  static const double borderRadiusExtraSmall = 4.0;
  static const double elevation = 0;

  static final Color _primaryColor = Color(0xff080C11);
  static final Color _primaryColorLight = Color(0xffdfe7ec);
  static final Color _primaryColorDark = Color(0xff3a525f);
  static final Color _contrastingTextColor = Color(0xffffffff);
  static final Color _accentTextColor = Color(0xff60899f);
  static final Color _backgroundColor = Color(0xffe6e8ea);
  static final Color _secondaryColor = Color(0xffeb6057);
  static final Color _highlighter = Color(0xff81aaf7);

  static final Color _secondaryColorDark = Color(0xff280301);
  static final Color _errorColor = Color(0xffd32f2f);

  static final ThemeData avnuTheme = ThemeData(
    primarySwatch: MaterialColor(4281287502, {
      50: Color(0xffeff3f5),
      100: Color(0xffdfe7ec),
      200: Color(0xffbfd0d9),
      300: Color(0xffa0b8c5),
      400: Color(0xff80a0b2),
      500: Color(0xff60899f),
      600: Color(0xff4d6d7f),
      700: Color(0xff3a525f),
      800: Color(0xff263740),
      900: Color(0xff131b20)
    }),
    brightness: Brightness.light,
    primaryColor: _primaryColor,
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: _primaryColorLight,
    primaryColorDark: _primaryColorDark,
    accentColor: Color(0xff60899f),
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
    toggleableActiveColor: Color(0xff4d6d7f),
    secondaryHeaderColor: Color(0xffeff3f5),
    textSelectionColor: Color(0xffbfd0d9),
    cursorColor: Color(0xff4285f4),
    textSelectionHandleColor: Color(0xffa0b8c5),
    backgroundColor: _backgroundColor,
    dialogBackgroundColor: Color(0xffffffff),
    indicatorColor: Color(0xff60899f),
    hintColor: Color(0x8a000000),
    errorColor: _errorColor,
    fontFamily: 'Gordita',
    colorScheme: ColorScheme(
      primary: _primaryColor,
      onPrimary: _contrastingTextColor,
      primaryVariant: _primaryColorLight,
      background: _backgroundColor,
      onBackground: _primaryColorDark,
      secondary: _highlighter,
      onSecondary: _contrastingTextColor,
      secondaryVariant: _secondaryColorDark,
      error: _errorColor,
      onError: _contrastingTextColor,
      surface: _backgroundColor,
      onSurface: _primaryColorDark,
      brightness: Brightness.light,
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xffe0e0e0),
      disabledColor: Color(0x61000000),
      highlightColor: Color(0x29000000),
      splashColor: Color(0x1f000000),
      focusColor: Color(0x1f000000),
      hoverColor: Color(0x0a000000),
      colorScheme: ColorScheme(
        primary: Color(0xff2f434e),
        primaryVariant: Color(0xff3a525f),
        secondary: Color(0xff60899f),
        secondaryVariant: Color(0xff3a525f),
        surface: Color(0xffffffff),
        background: Color(0xffbfd0d9),
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
        color: _primaryColorDark,
        fontSize: 112,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.normal,
      ),
      display3: TextStyle(
        color: _primaryColorDark,
        fontSize: 56,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      display2: TextStyle(
        color: _primaryColorDark,
        fontSize: 45,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      display1: TextStyle(
        color: _primaryColorDark,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline: TextStyle(
        color: _primaryColorDark,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      title: TextStyle(
        color: _primaryColorDark,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      subhead: TextStyle(
        color: _primaryColorDark,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      body2: TextStyle(
        color: _primaryColorDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      body1: TextStyle(
        color: _primaryColorDark,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      caption: TextStyle(
        color: _primaryColorDark,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: _primaryColorDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      subtitle: TextStyle(
        color: _primaryColorDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: _primaryColorDark,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    accentTextTheme: TextTheme(
      display4: TextStyle(
        color: _accentTextColor,
        fontSize: 112,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.normal,
      ),
      display3: TextStyle(
        color: _accentTextColor,
        fontSize: 56,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      display2: TextStyle(
        color: _accentTextColor,
        fontSize: 45,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      display1: TextStyle(
        color: _accentTextColor,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline: TextStyle(
        color: _accentTextColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      title: TextStyle(
        color: _accentTextColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      subhead: TextStyle(
        color: _accentTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      body2: TextStyle(
        color: _accentTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      body1: TextStyle(
        color: _accentTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      caption: TextStyle(
        color: _accentTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: _accentTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      subtitle: TextStyle(
        color: _accentTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: _accentTextColor,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: 2,
      hasFloatingPlaceholder: true,
      isDense: false,
      contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
      isCollapsed: false,
      prefixStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color(0x00000000),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xdd000000),
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    accentIconTheme: IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
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
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d2f434e),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      )),
    ),
    dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    )),
  );
}
