part of '../utils.dart';

class Separate3By3Formatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(final TextEditingValue oldValue, final TextEditingValue newValue) {
    if (newValue.text.isEmpty)
      return newValue.copyWith(text: '');
    else if (newValue.text.compareTo(oldValue.text) != 0) {
      final List<String> chars = newValue.text.replaceAll(',', '').split('');
      final StringBuffer buffer = StringBuffer();
      for (int i = 0; i < chars.length; i++) {
        if (i % 3 == 0 && i != 0) buffer.write(',');
        buffer.write(chars[i]);
      }

      return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.length - newValue.text.length - newValue.selection.extentOffset),
      );
    } else
      return newValue;
  }
}

extension TextExtension on Text {
  Text displayLarge({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.displayLarge!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text displayMedium({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.displayMedium!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text displaySmall({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.displaySmall!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text headlineLarge({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.headlineLarge!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text headlineMedium({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.headlineMedium!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text headlineSmall({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.headlineSmall!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text titleLarge({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.titleLarge!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text titleMedium({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.titleMedium!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text titleSmall({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.titleSmall!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text bodyLarge({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.bodyLarge!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text bodyMedium({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.bodyMedium!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text bodySmall({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.bodySmall!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text labelLarge({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.labelLarge!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text labelMedium({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.labelMedium!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );

  Text labelSmall({
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final String? fontFamily,
    final double? letterSpacing,
    final double? height,
    final double? wordSpacing,
    final TextOverflow? overflow,
    final TextBaseline? textBaseline,
    final List<Shadow>? shadows,
    final Paint? background,
    final Color? backgroundColor,
    final String? debugLabel,
    final TextDecoration? decoration,
    final Color? decorationColor,
    final TextDecorationStyle? decorationStyle,
    final double? decorationThickness,
    final List<String>? fontFamilyFallback,
    final List<FontFeature>? fontFeatures,
    final FontStyle? fontStyle,
    final Paint? foreground,
    final bool? inherit,
    final TextLeadingDistribution? leadingDistribution,
    final Locale? locale,
    final String? package,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        key: key,
        locale: locale,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        style: context.textTheme.labelSmall!.copyWith(
          package: package,
          locale: locale,
          leadingDistribution: leadingDistribution,
          inherit: inherit,
          foreground: foreground,
          fontStyle: fontStyle,
          fontFeatures: fontFeatures,
          fontFamilyFallback: fontFamilyFallback,
          decorationThickness: decorationThickness,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decoration: decoration,
          debugLabel: debugLabel,
          backgroundColor: backgroundColor,
          background: background,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          height: height,
          wordSpacing: wordSpacing,
          overflow: overflow,
          textBaseline: textBaseline,
          shadows: shadows,
        ),
      );
}

extension StyledText<T extends Text> on T {
  Text copyWith({
    final String? data,
    final TextStyle? style,
    final StrutStyle? strutStyle,
    final TextAlign? textAlign,
    final Locale? locale,
    final bool? softWrap,
    final TextOverflow? overflow,
    final int? maxLines,
    final String? semanticsLabel,
    final TextWidthBasis? textWidthBasis,
  }) =>
      Text(
        data ?? this.data ?? "",
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        locale: locale ?? this.locale,
        maxLines: maxLines ?? this.maxLines,
        overflow: overflow ?? this.overflow,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        softWrap: softWrap ?? this.softWrap,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      );


  T bold() => copyWith(style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.bold)) as T;

  T italic() => copyWith(style: (style ?? const TextStyle()).copyWith(fontStyle: FontStyle.italic)) as T;

  T fontWeight(final FontWeight fontWeight) => copyWith(
        style: (style ?? const TextStyle()).copyWith(fontWeight: fontWeight),
      ) as T;

  T fontSize(final double size) => copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: size)) as T;

  T fontFamily(final String font) => copyWith(style: (style ?? const TextStyle()).copyWith(fontFamily: font)) as T;

  T letterSpacing(final double space) => copyWith(style: (style ?? const TextStyle()).copyWith(letterSpacing: space)) as T;

  T wordSpacing(final double space) => copyWith(style: (style ?? const TextStyle()).copyWith(wordSpacing: space)) as T;

  T textShadow({
    final Color color = const Color(0x34000000),
    final double blurRadius = 0.0,
    final Offset offset = Offset.zero,
  }) =>
      copyWith(
        style: (style ?? const TextStyle()).copyWith(
          shadows: <Shadow>[Shadow(color: color, blurRadius: blurRadius, offset: offset)],
        ),
      ) as T;

  T textColor(final Color color) => copyWith(style: (style ?? const TextStyle()).copyWith(color: color)) as T;

  T textAlignment(final TextAlign align) => copyWith(textAlign: align) as T;

  T textBaseline(final TextBaseline textBaseline) => copyWith(
        style: (style ?? const TextStyle()).copyWith(textBaseline: textBaseline),
      ) as T;

  T textWidthBasis(final TextWidthBasis textWidthBasis) => copyWith(textWidthBasis: textWidthBasis) as T;

  T withUnderLine() => copyWith(style: (style ?? const TextStyle()).copyWith(decoration: TextDecoration.underline)) as T;
}

extension TextStyleExtension on TextStyle {
  TextStyle get w900 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w900);

  TextStyle get w800 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w800);

  TextStyle get bold => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w700);

  TextStyle get w600 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w600);

  TextStyle get w500 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  TextStyle get w400 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w400);

  TextStyle get w300 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w300);

  TextStyle get w200 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w200);

  TextStyle get w100 => TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w100);
}
