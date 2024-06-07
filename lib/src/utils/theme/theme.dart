import 'package:clubcrafter/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      brightness: Brightness.light,
      primaryColor: AppColors.hotPink,
      textTheme: _textTheme());

  static TextTheme _textTheme() => TextTheme(
        titleLarge: GoogleFonts.poppins(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.black),
        bodySmall: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.grey),
        bodyMedium: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.white),
      );
}
// displayMedium,
//     displaySmall,
//     headlineLarge,
//      headlineMedium,
//     headlineSmall,
//      titleLarge,
//      titleMedium,
//      titleSmall,
//      bodyLarge,
//      bodyMedium,
//      bodySmall,
//      labelLarge,
//      labelMedium,
//     labelSmall,

 