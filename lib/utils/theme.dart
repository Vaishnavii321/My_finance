import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF0D47A1);       // Deep Blue
  static const accentColor = Color(0xFFFFA000);        // Amber
  static const backgroundColor = Color(0xFFF5F5F5);    // Light Grey
  static const incomeColor = Color(0xFF4CAF50);        // Green
  static const expenseColor = Color(0xFFF44336);       // Red
  static const textPrimaryColor = Color(0xFF212121);   // Dark Grey
  static const textSecondaryColor = Color(0xFF757575); // Medium Grey
  static const cardColor = Color(0xFFFFFFFF);          // White
  static const borderColor = Color(0xFFBDBDBD);        // Light Grey
}

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.accentColor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: AppColors.textPrimaryColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.textSecondaryColor,
      fontSize: 16,
    ),
  ),
  cardColor: AppColors.cardColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: AppColors.cardColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.cardColor,
      textStyle: const TextStyle(fontSize: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.cardColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
    ),
  ),
);
