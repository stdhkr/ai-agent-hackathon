import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goronyan/core/constants/app_colors.dart';
import 'package:goronyan/core/extensions/color_extensions.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.main,
    onPrimary: AppColors.textDark,
    secondary: AppColors.accent1,
    onSecondary: AppColors.background,
    error: AppColors.error,
    onError: Colors.white,
    surface: AppColors.background,
    onSurface: AppColors.textDark,
    outlineVariant: AppColors.lightGray,
  ),
  textTheme: GoogleFonts.sawarabiGothicTextTheme().copyWith(
    displayLarge: GoogleFonts.sawarabiGothic(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    displayMedium: GoogleFonts.sawarabiGothic(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    displaySmall: GoogleFonts.sawarabiGothic(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    headlineLarge: GoogleFonts.sawarabiGothic(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    headlineMedium: GoogleFonts.sawarabiGothic(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    headlineSmall: GoogleFonts.sawarabiGothic(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    titleLarge: GoogleFonts.sawarabiGothic(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    titleMedium: GoogleFonts.sawarabiGothic(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    titleSmall: GoogleFonts.sawarabiGothic(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    bodyLarge: GoogleFonts.sawarabiGothic(
      fontSize: 16,
      color: AppColors.textDark,
    ),
    bodyMedium: GoogleFonts.sawarabiGothic(
      fontSize: 14,
      color: AppColors.textDark,
    ),
    bodySmall: GoogleFonts.sawarabiGothic(
      fontSize: 12,
      color: AppColors.textDark,
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.accent1,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.textDark,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: GoogleFonts.sawarabiGothic(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    centerTitle: true,
    elevation: 0,
  ),
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: const BorderSide(
        color: AppColors.textDark,
      ),
    ),
    elevation: 0,
    backgroundColor: AppColors.lightGray,
    contentTextStyle: GoogleFonts.sawarabiGothic(
      fontSize: 14,
      color: AppColors.textDark,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.main,
      foregroundColor: AppColors.textDark,
      textStyle: GoogleFonts.sawarabiGothic(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.textDark,
      side: const BorderSide(color: AppColors.textDark),
      textStyle: GoogleFonts.sawarabiGothic(),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.textDark,
      // side: const BorderSide(color: AppColors.textDark),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.accent2,
      textStyle: GoogleFonts.sawarabiGothic(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.background,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.subColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.lightGray,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.accent2,
        width: 1.2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.error,
        width: 1,
      ),
    ),
    labelStyle: GoogleFonts.sawarabiGothic(
      fontSize: 14,
      color: AppColors.textDark,
    ),
    hintStyle: GoogleFonts.sawarabiGothic(
      fontSize: 14,
      color: AppColors.subColor,
    ),
    helperStyle: GoogleFonts.sawarabiGothic(
      fontSize: 12,
      color: AppColors.textLightDark,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 10,
    ),
  ),
  sliderTheme: SliderThemeData(
    trackShape: const PaddedTrackShape(),
    trackHeight: 16,
    activeTrackColor: AppColors.accent1,
    inactiveTrackColor: AppColors.lightGray,
    thumbColor: AppColors.accent1,
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: 28,
    ),
    overlayColor: AppColors.accent1.withDoubleOpacity(0.1),
    valueIndicatorColor: AppColors.accent1,
    valueIndicatorTextStyle: GoogleFonts.sawarabiGothic(
      fontSize: 14,
      color: Colors.white,
    ),
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 0,
    backgroundColor: AppColors.background,
    titleTextStyle: GoogleFonts.sawarabiGothic(
      fontSize: 20,
      color: AppColors.textDark,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: GoogleFonts.sawarabiGothic(
      fontSize: 16,
      color: AppColors.textDark,
    ),
  ),
  listTileTheme: ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    tileColor: AppColors.background,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 0,
    ),
    textColor: AppColors.textDark,
    titleTextStyle: GoogleFonts.sawarabiGothic(
      fontSize: 16,
      color: AppColors.textDark,
      fontWeight: FontWeight.bold,
    ),
    iconColor: AppColors.textLightDark,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.background;
        }
        return AppColors.textLightDark;
      },
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.subColor;
        }
        return AppColors.background;
      },
    ),
    trackOutlineWidth: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return 0;
        }
        return 1;
      },
    ),
    trackOutlineColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.transparent;
        }
        return AppColors.textDark;
      },
    ),
    overlayColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.hovered)) {
          return AppColors.backgroundGray.withDoubleOpacity(0.1);
        }
        return AppColors.backgroundGray.withDoubleOpacity(0.1);
      },
    ),
  ),
  tabBarTheme: TabBarTheme(
    dividerHeight: 0,
    labelColor: AppColors.background,
    unselectedLabelColor: AppColors.textLightDark,
    labelStyle: GoogleFonts.sawarabiGothic(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: GoogleFonts.sawarabiGothic(
      fontSize: 16,
    ),
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: AppColors.accent1,
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    dragHandleColor: AppColors.lightGray,
  ),
);

class PaddedTrackShape extends RoundedRectSliderTrackShape {
  const PaddedTrackShape({this.horizontalPadding = 8.0});

  final double horizontalPadding;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight ?? 2.0;
    // 左右にパディングを入れる
    final trackLeft = offset.dx + horizontalPadding;
    final trackWidth = parentBox.size.width - horizontalPadding * 2;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;

    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
