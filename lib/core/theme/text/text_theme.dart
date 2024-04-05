import 'package:flutter/material.dart';

const lightTextTheme = TextTheme(
  titleLarge: _titleLarge,
  labelSmall: _labelSmall,
  bodyMedium: _bodyMedium,
  bodySmall: _bodySmall,
);

const _titleLarge = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20,
);
const _labelSmall = TextStyle(
  fontWeight: FontWeight.w800,
  fontSize: 12,
);
const _bodyMedium = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12,
);
const _bodySmall = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 6,
);
