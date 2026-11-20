import 'package:flutter/material.dart';

abstract final class SwapifyColors {
  static const primary = Color(0xFF73141D);
  static const primaryLight = Color(0xFFFBF4F5);
  static const secondary = Color(0xFF9E9766);
  static const background = Color(0xFFF8F7F4);
  static const surface = Color(0xFFFFFFFF);
  static const border = Color(0xFFEDE8E8);
  static const muted = Color(0xFF786567);
  static const text = Color(0xFF2B2525);
}

abstract final class AppTheme {
  static ThemeData get light {
    const colorScheme = ColorScheme.light(
      primary: SwapifyColors.primary,
      onPrimary: SwapifyColors.surface,
      primaryContainer: SwapifyColors.primaryLight,
      onPrimaryContainer: SwapifyColors.primary,
      secondary: SwapifyColors.secondary,
      surface: SwapifyColors.surface,
      onSurface: SwapifyColors.text,
    );
    final base = ThemeData.light(useMaterial3: true);
    final textTheme = base.textTheme.apply(
      fontFamily: 'PlusJakartaSans',
      bodyColor: SwapifyColors.text,
      displayColor: SwapifyColors.text,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: SwapifyColors.background,
      fontFamily: 'PlusJakartaSans',
      textTheme: textTheme.copyWith(
        headlineSmall: textTheme.headlineSmall?.copyWith(
          fontFamily: 'Fraunces',
          fontWeight: FontWeight.w600,
          fontSize: 24,
          height: 32 / 24,
        ),
        titleLarge: textTheme.titleLarge?.copyWith(
          fontFamily: 'Fraunces',
          fontSize: 20,
          height: 28 / 20,
        ),
        bodyMedium: textTheme.bodyMedium?.copyWith(
          fontSize: 14,
          height: 20 / 14,
          color: SwapifyColors.muted,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: SwapifyColors.surface,
        indicatorColor: SwapifyColors.primaryLight,
        surfaceTintColor: Colors.transparent,
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            color: states.contains(WidgetState.selected)
                ? SwapifyColors.primary
                : SwapifyColors.muted,
          ),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 11,
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w700
                : FontWeight.w500,
            color: states.contains(WidgetState.selected)
                ? SwapifyColors.primary
                : SwapifyColors.muted,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: SwapifyColors.primary,
          side: const BorderSide(color: SwapifyColors.primary, width: 1.6),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: const StadiumBorder(),
          textStyle: const TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
