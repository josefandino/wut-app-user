import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF003399);
  static const primaryDark = Color(0xFF152663);
  static const secondary = Color(0xFF00A3E4);
  static const secondaryDark = Color(0xFF15539B);
  static const tertiary = Color(0xFF00CCFF);
  static const quaternary = Color(0xFF6777EF);
  static const quinary = Color(0xFF9B0461);
  static const error = Color(0xFF960202);
  static const green = Color(0xFF28A745);
  static const gray = Color(0xFF7F858A);
  static const grayDark = Color(0xFF999999);
  static const grayLight = Color(0xFFEAeded);
  static const cardHeader = Color(0xFFF7F7F7);
  static const background = Color(0xFFF0F0F0);
  static const text = Color(0xFF333333);
  static const textWhite = Color(0xFFFEFEFE);
  static const warning = Color(0xFFFFC107);
  static const info = Color(0xFF17A2B8);
}

// Paleta adaptada a Material 3
final ColorScheme appColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary,
  onPrimary: AppColors.textWhite,
  primaryContainer: AppColors.primaryDark,
  onPrimaryContainer: AppColors.textWhite,
  secondary: AppColors.secondary,
  onSecondary: AppColors.textWhite,
  secondaryContainer: AppColors.secondaryDark,
  onSecondaryContainer: AppColors.textWhite,
  tertiary: AppColors.tertiary,
  onTertiary: AppColors.textWhite,
  tertiaryContainer: AppColors.quaternary,
  onTertiaryContainer: AppColors.textWhite,
  error: AppColors.error,
  onError: AppColors.textWhite,
  errorContainer: AppColors.error.withValues(alpha: 0.2),
  onErrorContainer: AppColors.error,
  background: AppColors.background,
  onBackground: AppColors.text,
  surface: AppColors.cardHeader,
  onSurface: AppColors.text,
  surfaceContainerHighest: AppColors.grayLight,
  onSurfaceVariant: AppColors.grayDark,
  outline: AppColors.gray,
  outlineVariant: AppColors.grayLight,
  shadow: Colors.black,
  scrim: Colors.black.withValues(alpha: 0.5),
  inverseSurface: AppColors.grayDark,
  onInverseSurface: AppColors.textWhite,
  inversePrimary: AppColors.primaryDark,
);
