import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color.dart';

class COSThemes {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      surface: COSColors.neutral.shade100,
      primary: COSColors.primary,
      secondary: COSColors.secondary,
      error: COSColors.error,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    cardColor: COSColors.neutral.shade50,
    scaffoldBackgroundColor: COSColors.neutral.shade100,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
        TargetPlatform.values,
        value: (_) => const FadeForwardsPageTransitionsBuilder(),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
      elevation: WidgetStatePropertyAll(0),
      side: WidgetStatePropertyAll(BorderSide(color: COSColors.neutral.shade300)),
      constraints: BoxConstraints(maxHeight: 48),
      hintStyle: WidgetStatePropertyAll(TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      surfaceTintColor: WidgetStateColor.resolveWith((s) {
        if (s.contains(WidgetState.focused)) {
          return COSColors.neutral.shade900;
        }
        return COSColors.neutral.shade300;
      }),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(size: 28, color: COSColors.primary);
        }
        return IconThemeData(color: COSColors.neutral.shade300, size: 28);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        Color color() {
          if (states.contains(WidgetState.selected)) {
            return COSColors.primary;
          }
          return COSColors.neutral.shade300;
        }

        return TextStyle(color: color(), fontWeight: FontWeight.w500, fontSize: 12);
      }),
      backgroundColor: COSColors.neutral[50],
    ),
  );
}
