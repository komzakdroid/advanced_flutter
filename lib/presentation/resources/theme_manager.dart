import 'package:advanced_flutter/presentation/resources/color_manager.dart';
import 'package:advanced_flutter/presentation/resources/font_manager.dart';
import 'package:advanced_flutter/presentation/resources/styles_manager.dart';
import 'package:advanced_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkGrey,
    disabledColor: ColorManager.grey1,
    // ripple color
    splashColor: ColorManager.primaryOpacity70,
    //will be used in case of disabled button for example
    accentColor: ColorManager.grey,
    errorColor: ColorManager.error,

    // Card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    ),
    // Button theme
    buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),

    //Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(color: ColorManager.white),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    // Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      subtitle1:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),
    //InputDecoration Style
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),
      //hint Style
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      //label style
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      //error style
      errorStyle: getRegularStyle(color: ColorManager.error),
      //enable border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //focused Border Style
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //error Border Style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}