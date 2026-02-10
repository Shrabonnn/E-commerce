import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get lightThemeData{
    return ThemeData(
      colorSchemeSeed: AppColors.themeColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.themeColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600
        )
      ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor, width: 1)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor, width: 1)
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor, width: 1)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.themeColor, width: 1),
          ),
          hintStyle: TextStyle(
            color: AppColors.themeColor,
            fontWeight: FontWeight.w400
          ),

        ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeColor,
              foregroundColor: Colors.white,
              fixedSize: Size.fromWidth(double.maxFinite),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4)
              )
          )
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.themeColor
        )
      )

    );
  }
}