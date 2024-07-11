import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static TextStyle s12w400Poppins = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle s14w400Poppins = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle s14w700Poppins = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle s16w400Poppins = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle s16w700Poppins = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle s24w700Poppins = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
}
