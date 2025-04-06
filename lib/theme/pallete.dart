import 'package:flutter/material.dart';

class AppColors {
  /* BLUE SCALE (Primary) */
  static const blue50 = Color(0xFFE1F0FF); // Lightest background tint
  static const blue100 = Color(0xFFB3D7FF);
  static const blue200 = Color(0xFF4A8FE7); // Accent/CTA
  static const blue300 = Color(0xFF3B7BC8);
  static const blue800 = Color(0xFF2D5F8B); // Primary brand color
  static const blue900 = Color(0xFF1E3D59); // Darkest blue

  /* NEUTRAL SCALE */
  static const white = Color(0xFFFFFFFF);
  static const gray50 = Color(0xFFF8FAFC); // Light backgrounds
  static const gray100 = Color(0xFFF1F5F9);
  static const gray200 = Color(0xFFE2E8F0); // Borders
  static const gray500 = Color(0xFF64748B); // Secondary text
  static const gray800 = Color(0xFF1E293B); // Primary text
  static const black = Color(0xFF000000);

  /* SEMANTIC COLORS */
  static const success = Color(0xFF16A34A);
  static const error = Color(0xFFDC2626);
  static const warning = Color(0xFFF59E0B);

  /* COMPLEMENTARY ACCENTS */
  static const teal = Color(0xFF0F766E); // For "Eco" category
  static const sand = Color(0xFFB45309); // For "Vintage" category
  static const coral = Color(0xFFFF4D4F); // For sale tags

  /* COMPONENT-SPECIFIC COLORS */
  static const appBarBackground = blue900;
  static const primaryButton = blue800;
  static const secondaryButton = gray200;
  static const textButton = blue200;
  static const cardBackground = white;
  static const dividerColor = gray200;
}
