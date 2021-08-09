import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle _headline4 = GoogleFonts.montserrat(
    color: AppColors.dark,
    fontWeight: FontWeight.w900,
    height: 1.5,
  );

  static final TextStyle _headline6 = GoogleFonts.montserrat(
    color: AppColors.dark,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );
  static final TextStyle _subtitle1 = GoogleFonts.montserrat(
    color: AppColors.medium,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static final TextStyle _subtitle2 = GoogleFonts.montserrat(
    color: AppColors.dark,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static final TextStyle _caption = GoogleFonts.montserrat(
    color: AppColors.light,
    fontSize: 12,
    height: 1.5,
  );

  static final TextStyle _body1 = GoogleFonts.montserrat(
    color: AppColors.dark,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static final TextTheme appTextTheme = TextTheme(
    headline4: _headline4,
    headline6: _headline6,
    subtitle1: _subtitle1,
    subtitle2: _subtitle2,
    caption: _caption,
    bodyText1: _body1,
  );
}
