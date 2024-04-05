//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/theme/extension/context_color.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*
  * Widget
  * ___________________________________________________________________________
*/
class AppInput extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
  */
  const AppInput({
    this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.focusNode,
    super.key,
    this.onChanged,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixIconConstraints,
  });

/*
   * Arguments
   * __________________________________________________________________________
  */

  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;

  final ValueChanged<String>? onChanged;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    // variables

    final inputDecorationTheme = InputDecoration(
      filled: true,
      alignLabelWithHint: true,
      fillColor: context.colorScheme.surface,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: context.colorScheme.onSurface),
        borderRadius: BorderRadius.circular(100),
      ),
      hintStyle: context.bodyMedium.copyWith(
        color: context.colorScheme.onSurface,
      ),
    );

    Color? fillColor;

    fillColor = inputDecorationTheme.fillColor;

    // UI
    return TextField(
      enabled: false,
      inputFormatters: [
        if (inputFormatters != null) ...inputFormatters!,
      ],
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      focusNode: focusNode,
      onChanged: onChanged,
      decoration: inputDecorationTheme.copyWith(
        isDense: false,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(
          15,
          0,
          23,
          0,
        ),
        fillColor: fillColor,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
