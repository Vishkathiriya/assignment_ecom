// ignore_for_file: must_be_immutable
import 'package:ecommerce_assignment/utils/app_export.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class EcommerceTextFormField extends StatelessWidget {
  EcommerceTextFormField(
      {super.key,
      required this.context,
      this.validator,
      this.width,
      this.alignment,
      this.textStyle,
      this.isObscure = false,
      this.isCapitalized = false,
      this.maxLines = 1,
      this.isLabelEnabled = true,
      this.readOnly = false,
      this.controller,
      this.inputAction,
      this.focusNode,
      this.label,
      this.hint = "",
      this.onTap,
      this.prefix,
      this.maxLength,
      this.suffixIcon,
      this.autofillHints,
      this.inputFormatters,
      this.prefixIcon,
      this.onFieldSubmitted,
      this.onChanged,
      this.textInputAction,
      this.textInputType,
      this.hintStyle,
      this.hintText,
      this.obscureText = false,
      this.suffix,
      this.fillColor,
      this.filled = true,
      this.borderDecoration,
      this.enabled = true,
      this.labelText,
      this.required = false,
      this.autovalidateMode,
      this.onSaved,
      this.lableStyle,
      this.initialValue});

  TextEditingController? controller;

  final BuildContext context;

  final Alignment? alignment;

  final double? width;

  final TextInputAction? inputAction;

  final String? label;

  final String hint;

  final bool isObscure;

  final bool isCapitalized;

  final TextStyle? textStyle;

  final int maxLines;

  final int? maxLength;

  final ValueChanged<String>? onChanged;

  final bool obscureText;

  final bool isLabelEnabled;

  final String? Function(String?)? validator;

  final Function(String)? onFieldSubmitted;

  final bool readOnly;

  final Widget? suffixIcon;

  final String? hintText;

  final TextStyle? lableStyle;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final Widget? prefixIcon;

  final void Function()? onTap;

  final Iterable<String>? autofillHints;

  final FocusNode? focusNode;

  final List<TextInputFormatter>? inputFormatters;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final Widget? suffix;

  final Color? fillColor;

  final bool? filled;

  final InputBorder? borderDecoration;

  final bool? enabled;

  final String? labelText;

  final bool? required;

  final AutovalidateMode? autovalidateMode;

  final String? initialValue;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        height: 70.h,
        width: width ?? double.maxFinite,
        child: TextFormField(
          enabled: enabled,
          onSaved: onSaved,
          initialValue: initialValue,
          onChanged: onChanged,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          autofillHints: autofillHints,
          onTap: onTap,
          maxLines: maxLines,
          maxLength: maxLength,
          onFieldSubmitted: onFieldSubmitted,
          focusNode: focusNode,
          controller: controller,
          readOnly: readOnly,
          style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
          textCapitalization: isCapitalized
              ? TextCapitalization.words
              : TextCapitalization.none,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: decoration,
          validator: validator,
          autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        label: Text(labelText ?? ''),
        labelStyle: lableStyle ?? Theme.of(context).textTheme.bodySmall,
        alignLabelWithHint: true,
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        prefixIcon: prefix ?? null,
        suffixIcon: suffix ?? null,
        isDense: true,
        contentPadding: EdgeInsets.only(
            left: 16.0.w, top: 16.5.h, bottom: 10.5.h, right: 16.0.w),
        fillColor: fillColor,
        filled: false,
        errorStyle: const TextStyle(height: 0.1),
        border: borderDecoration ??
            GradientOutlineInputBorder(
              width: 3.w,
              gradient: const LinearGradient(
                  colors: [AppColors.tealColor, AppColors.blueColor]),
              borderRadius: BorderRadius.circular(10.r),
            ),
        enabledBorder: borderDecoration ??
            GradientOutlineInputBorder(
              width: 3.w,
              gradient: const LinearGradient(
                  colors: [AppColors.tealColor, AppColors.blueColor]),
              borderRadius: BorderRadius.circular(10.r),
            ),
        focusedBorder: borderDecoration ??
            GradientOutlineInputBorder(
              width: 3.w,
              gradient: const LinearGradient(
                  colors: [AppColors.tealColor, AppColors.blueColor]),
              borderRadius: BorderRadius.circular(10.r),
            ),
      );
}
