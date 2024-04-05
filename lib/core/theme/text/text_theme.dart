import 'package:flutter/material.dart';

const lightTextTheme = TextTheme(
  titleLarge: _titleLarge,
  titleSmall: _titleSmall,
  labelSmall: _labelSmall,
  bodyLarge: _bodyLarge,
  bodyMedium: _bodyMedium,
  bodySmall: _bodySmall,
  displaySmall: _displaySmll,
);

const _titleLarge = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20,
);
const _titleSmall = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 12,
);

const _labelSmall = TextStyle(
  fontWeight: FontWeight.w800,
  fontSize: 12,
);
const _bodyLarge = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 16,
);
const _bodyMedium = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12,
);
const _bodySmall = TextStyle(
  fontWeight: FontWeight.w300,
  fontSize: 8,
);

const _displaySmll = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 6,
);
