import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isPasswordTextField;
  final bool hasShadow;
  final bool isReadOnly;
  final BoxConstraints prefixIconConstraints;
  final TextInputType? textInputType;
  final BoxConstraints suffixIconConstraints;
  final TextEditingController? controller;
  final int? minLines;
  final int maxLines;
  final void Function()? onTap;
  final void Function(String?)? onSaved;

  final String? Function(String?)? validator;
  const CustomTextFormField(
      {Key? key,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.isPasswordTextField = false,
      this.hasShadow = false,
      this.prefixIconConstraints =
          const BoxConstraints(maxHeight: 48, maxWidth: 48),
      this.suffixIconConstraints =
          const BoxConstraints(maxHeight: 48, maxWidth: 48),
      this.isReadOnly = false,
      this.textInputType,
      this.controller,
      this.minLines,
      this.maxLines = 1,
      this.onTap,
      required this.validator,
      this.onSaved})
      : super(key: key);

  /// TextField widget
  Widget textFormFieldWidget() {
    return SizedBox(
      height: (maxLines > 1 || (minLines ?? 1) > 1) ? null : 62,
      child: TextFormField(
        validator: validator,
        controller: controller,
        onSaved: onSaved,
        onTap: onTap,
        readOnly: isReadOnly,
        obscureText: isPasswordTextField,
        keyboardType: textInputType,
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          prefix: AppGaps.wGap10,
          prefixIconConstraints: prefixIconConstraints,
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: prefixIcon,
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          suffixIconConstraints: suffixIconConstraints,
          suffix: AppGaps.wGap10,
          suffixIcon: suffixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: suffixIcon,
                )
              : null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // If label text is not null, then show label as a separate Text widget
    // wrapped inside column widget.
    // Else, just return the TextFormField widget.
    if (labelText != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label text
          Text(
            labelText!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          AppGaps.hGap8,
          // Text field
          hasShadow
              ? PhysicalModel(
                  color: Colors.transparent,
                  elevation: 10,
                  shadowColor: Colors.black.withOpacity(0.25),
                  child: textFormFieldWidget(),
                )
              : textFormFieldWidget(),
        ],
      );
    } else {
      // Text field
      return hasShadow
          ? PhysicalModel(
              color: Colors.transparent,
              elevation: 10,
              shadowColor: Colors.black.withOpacity(0.25),
              child: textFormFieldWidget())
          : textFormFieldWidget();
    }
  }
}
