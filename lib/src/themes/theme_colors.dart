part of './theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color primaryTextColor;
  final Color cryptoBackgroundColor;
  final Color secondaryTextColor;
  final Color thirdDesignElementColor;

  const ThemeColors(
      {required this.primaryTextColor,
      required this.secondaryTextColor,
      required this.thirdDesignElementColor,
      required this.cryptoBackgroundColor});

  @override
  ThemeExtension<ThemeColors> copyWith(
      {Color? primaryTextColor,
      Color? secondaryTextColor,
      Color? cryptoBackgroundColor,
      Color? thirdDesignElementColor}) {
    return ThemeColors(
        primaryTextColor: primaryTextColor ?? this.primaryTextColor,
        cryptoBackgroundColor:
            cryptoBackgroundColor ?? this.cryptoBackgroundColor,
        thirdDesignElementColor:
            thirdDesignElementColor ?? this.thirdDesignElementColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor);
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
        primaryTextColor:
            Color.lerp(primaryTextColor, other.primaryTextColor, t)!,
        cryptoBackgroundColor:
            Color.lerp(cryptoBackgroundColor, other.cryptoBackgroundColor, t)!,
        thirdDesignElementColor: Color.lerp(
            thirdDesignElementColor, other.thirdDesignElementColor, t)!,
        secondaryTextColor:
            Color.lerp(secondaryTextColor, other.secondaryTextColor, t)!);
  }

  static get dark => const ThemeColors(
      cryptoBackgroundColor: DarkModeColors.violet0,
      primaryTextColor: DarkModeColors.base100,
      thirdDesignElementColor: DarkModeColors.base40,
      secondaryTextColor: DarkModeColors.base70);
}
