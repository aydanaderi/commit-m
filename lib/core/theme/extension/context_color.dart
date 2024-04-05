import 'package:flutter/material.dart';

extension ThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  TextStyle get titleLarge => textTheme.titleLarge!;
  TextStyle get titleSmall => textTheme.titleSmall!;
  TextStyle get labelSmall => textTheme.labelSmall!;
  TextStyle get bodyLarge => textTheme.bodyLarge!;
  TextStyle get bodyMedium => textTheme.bodyMedium!;
  TextStyle get bodySmall => textTheme.bodySmall!;
  TextStyle get displaySmall => textTheme.displaySmall!;
}
