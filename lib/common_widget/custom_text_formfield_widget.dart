import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thibaudbdx_app/constants/text_font_style.dart';




class CustomTextFormFieldWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final TextEditingController? scrollController;
  final String? hintTxt;
  final String? labelText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hinStyle;
  final TextStyle? labelTextStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final String? helperText;
  final TextStyle? helperStyle;
  final String? counterText;
  final TextStyle? counterStyle;
  final TextStyle? errorStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? isDense;
  final BorderSide? borderSide;
  const CustomTextFormFieldWidget({
    super.key,
    this.textStyle,
    this.controller,
    this.hintTxt,
    this.labelText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.border,
    this.errorBorder,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly,
    this.scrollController,
    this.fillColor,
    this.filled,
    this.borderRadius,
    this.hinStyle,
    this.labelTextStyle,
    this.contentPadding,
    this.helperText,
    this.helperStyle,
    this.counterText,
    this.counterStyle,
    this.errorStyle,
    this.floatingLabelBehavior,
    this.isDense,
    this.borderSide,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintTxt ?? '',
        hintStyle: hinStyle ?? TextFontStyle.headline14c848585poppinsw400,
        labelText: labelText,
        labelStyle: labelTextStyle,
        fillColor: fillColor ?? Colors.grey,
        filled: filled ?? true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 15.w, vertical: 22.h),
        helperText: helperText,
        helperStyle: helperStyle,
        counterText: counterText,
        counterStyle: counterStyle,
        errorStyle: errorStyle,
        floatingLabelBehavior:
            floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: isDense ?? false,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(4.r),
          borderSide: borderSide ?? const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(4.r),
          borderSide: borderSide ?? const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(4.r),
          borderSide: borderSide ?? const BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(4.r),
          borderSide: borderSide ?? const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
