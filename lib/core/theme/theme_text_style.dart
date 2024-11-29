// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextStyles extends ThemeExtension<TextStyles> {
  const TextStyles({
    required this.maMedium12,
    required this.maMedium15,
    required this.maMedium16,
    required this.maMedium20,
  });

  final TextStyle maMedium12;
  final TextStyle maMedium15;
  final TextStyle maMedium16;
  final TextStyle maMedium20;

  static TextStyles textStyles = TextStyles(
    maMedium12: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.montserratAlternates.name),
    maMedium15: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.montserratAlternates.name),
    maMedium16: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.montserratAlternates.name),
    maMedium20: TextStyle(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.montserratAlternates.name),
  );

  @override
  ThemeExtension<TextStyles> lerp(ThemeExtension<TextStyles>? other, double t) {
    if (other is! TextStyles) {
      return this;
    }
    return TextStyles(
      maMedium12: TextStyle.lerp(maMedium12, other.maMedium12, t)!,
      maMedium15: TextStyle.lerp(maMedium15, other.maMedium15, t)!,
      maMedium16: TextStyle.lerp(maMedium16, other.maMedium16, t)!,
      maMedium20: TextStyle.lerp(maMedium20, other.maMedium20, t)!,
    );
  }

  @override
  TextStyles copyWith({
    TextStyle? maMedium12,
    TextStyle? maMedium15,
    TextStyle? maMedium16,
    TextStyle? maMedium20,
  }) {
    return TextStyles(
      maMedium12: maMedium12 ?? this.maMedium12,
      maMedium15: maMedium15 ?? this.maMedium15,
      maMedium16: maMedium16 ?? this.maMedium16,
      maMedium20: maMedium20 ?? this.maMedium20,
    );
  }
}

enum FontFamily {
  montserratAlternates,
}
