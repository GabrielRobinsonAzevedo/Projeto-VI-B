import 'package:flutter/material.dart';

/// Paleta do Vitrine+.
abstract final class AppColors {
  static const primary = Color(0xFF5B4CF0);
  static const primaryDark = Color(0xFF3A2CC0);
  static const mint = Color(0xFF14B88F);
  static const coral = Color(0xFFFF6B4A);
  static const amber = Color(0xFFF5A524);
  static const sky = Color(0xFF2E9BEA);
  static const pink = Color(0xFFE5488F);
  static const ink = Color(0xFF151729);
  static const muted = Color(0xFF6B6F86);
  static const subtle = Color(0xFF9A9DB1);
  static const bg = Color(0xFFF4F5FA);
  static const line = Color(0xFFE6E7EF);
  static const surface = Colors.white;

  static const hero = LinearGradient(
    colors: [Color(0xFF6C5CFF), Color(0xFF4433D6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Cores categóricas para gráficos e avatares.
  static const categoricas = [primary, mint, coral, amber, sky, pink];
}

abstract final class AppRadius {
  static const card = 22.0;
  static const field = 14.0;
}

ThemeData buildAppTheme() {
  final scheme = ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    primary: AppColors.primary,
    surface: AppColors.surface,
  );
  final base = ThemeData(useMaterial3: true, colorScheme: scheme);
  final text = base.textTheme.apply(bodyColor: AppColors.ink, displayColor: AppColors.ink);

  OutlineInputBorder borda(Color cor, [double largura = 1]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.field),
        borderSide: BorderSide(color: cor, width: largura),
      );

  return base.copyWith(
    scaffoldBackgroundColor: AppColors.bg,
    textTheme: text.copyWith(
      headlineMedium: text.headlineMedium?.copyWith(fontWeight: FontWeight.w800, letterSpacing: -0.6),
      titleLarge: text.titleLarge?.copyWith(fontWeight: FontWeight.w800, letterSpacing: -0.3),
      titleMedium: text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bg,
      foregroundColor: AppColors.ink,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: AppColors.ink,
        letterSpacing: -0.5,
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.surface,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.card),
        side: const BorderSide(color: AppColors.line),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.surface,
      surfaceTintColor: Colors.transparent,
      indicatorColor: AppColors.primary.withValues(alpha: 0.12),
      height: 70,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (s) => TextStyle(
          fontSize: 12,
          fontWeight: s.contains(WidgetState.selected) ? FontWeight.w700 : FontWeight.w500,
          color: s.contains(WidgetState.selected) ? AppColors.primary : AppColors.muted,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (s) => IconThemeData(
          color: s.contains(WidgetState.selected) ? AppColors.primary : AppColors.muted,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: borda(AppColors.line),
      enabledBorder: borda(AppColors.line),
      focusedBorder: borda(AppColors.primary, 1.6),
      hintStyle: const TextStyle(color: AppColors.subtle),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(0, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 50),
        side: const BorderSide(color: AppColors.line),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
    chipTheme: base.chipTheme.copyWith(
      backgroundColor: AppColors.surface,
      selectedColor: AppColors.primary,
      side: const BorderSide(color: AppColors.line),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      labelStyle: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
      secondaryLabelStyle: const TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
      checkmarkColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColors.ink,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.surface,
      surfaceTintColor: Colors.transparent,
      showDragHandle: true,
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(Size(0, 46)),
        side: const WidgetStatePropertyAll(BorderSide(color: AppColors.line)),
        textStyle: const WidgetStatePropertyAll(TextStyle(fontWeight: FontWeight.w700)),
        backgroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? AppColors.primary : AppColors.surface,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? Colors.white : AppColors.ink,
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.line, space: 1),
    sliderTheme: base.sliderTheme.copyWith(
      activeTrackColor: AppColors.primary,
      thumbColor: AppColors.primary,
      inactiveTrackColor: AppColors.line,
    ),
  );
}
