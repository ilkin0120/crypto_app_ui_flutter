part of './theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle displayLarge;
  final TextStyle headlineLarge;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelSmall;

  ThemeTextStyles({
    required this.displayLarge,
    required this.headlineLarge,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelSmall,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? displayLarge,
    TextStyle? headlineLarge,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelSmall,
  }) {
    return ThemeTextStyles(
      displayLarge: displayLarge ?? this.displayLarge,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      displayLarge: TextStyle.lerp(xxLargeTextStyle, other.displayLarge, t)!,
      headlineLarge: TextStyle.lerp(xlargeTextStyle, other.headlineLarge, t)!,
      bodyLarge: TextStyle.lerp(largeTextStyle, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(mediumTextStyle, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(smallTextStyle, other.bodySmall, t)!,
      labelSmall: TextStyle.lerp(xSmallTextStyle, other.labelSmall, t)!,
    );
  }

  static get dark => ThemeTextStyles(
        displayLarge: xxLargeTextStyle.copyWith(
          color: DarkModeColors.base100,
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: xlargeTextStyle.copyWith(
          color: DarkModeColors.base100,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: largeTextStyle.copyWith(
            fontWeight: FontWeight.w400, color: DarkModeColors.base100),
        bodyMedium: mediumTextStyle.copyWith(
          color: DarkModeColors.base70,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: smallTextStyle.copyWith(
          color: DarkModeColors.base70,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: xSmallTextStyle.copyWith(
          color: DarkModeColors.base70,
          fontWeight: FontWeight.w600,
        ),
      );
}
