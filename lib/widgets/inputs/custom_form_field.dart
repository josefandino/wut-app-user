import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';

class CustomFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final IconData? prefixIcon;
  final bool obscureText;
  final String? errorMessage;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;

  const CustomFormField({
    super.key,
    this.label,
    this.hint,
    this.prefixIcon,
    this.obscureText = false,
    this.errorMessage,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final colors = appColorScheme;
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(12),
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        // Border default
        enabledBorder: border,

        // Border error
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: colors.error),
        ),
        // Color text error
        errorText: errorMessage,
        errorStyle: TextStyle(color: colors.error),

        isDense: true,
        label: label != null
            ? Text(label!, style: TextStyle(color: colors.primary))
            : null,
        hintText: hint,
        hintStyle: TextStyle(color: colors.primary),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon!, color: colors.primary)
            : null,
        // errorMaxLines: 3,

        // Border focus
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.secondary),
        ),

        // Focus color
        focusColor: colors.secondary,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
      ),
    );
  }
}
