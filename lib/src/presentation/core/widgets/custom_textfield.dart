import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.controller,
    this.errorMessage,
    this.keyboardType,
    this.obscureText = false,
    this.textCapitalization,
    this.onTap,
    this.readOnly,
    this.maxLines,
    this.textInputAction,
    this.hint,
    this.autoFocus = false,
    this.enabled,
    this.maxLength,
    this.suffix,
    this.validator,
    this.onChanged,
    this.prefix,
    this.hintStyle,
    this.enableInteractiveSelection,
    this.inputFormatter,
    this.autovalidateMode,
    this.prefixIcon,
    this.counter,
    this.style,
    this.counterText,
  }) : super(key: key);
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function? validator;
  final bool obscureText;
  final String? errorMessage;
  final TextCapitalization? textCapitalization;
  final bool? readOnly;
  final Function? onTap;
  final int? maxLines;
  final bool? autoFocus;
  final String? hint;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final int? maxLength;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String)? onChanged;
  final TextStyle? hintStyle;
  final bool? enableInteractiveSelection;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatter;
  final Widget? prefixIcon;
  final Widget? counter;
  final TextStyle? style;
  final String? counterText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Padding(
      padding: widget.label.isNotEmpty
          ? EdgeInsets.only(top: kSize.height * 0.0105)
          : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label.isNotEmpty)
            Text(
              widget.label,
              style: AppTypography.soraRegular.copyWith(
                  color: AppColors.textColor, fontSize: kSize.height * 0.0184),
            ),
          // SizedBox(width: SizeUtils.getWidth(20)),
          if (widget.label.isNotEmpty) SizedBox(height: kSize.height * 0.015),
          TextFormField(
            inputFormatters: widget.inputFormatter,
            enableInteractiveSelection:
                widget.enableInteractiveSelection ?? false,
            textAlign: TextAlign.start,
            enableSuggestions: false,
            autocorrect: false,
            showCursor: true, autofocus: widget.autoFocus!,
            style: widget.style ??
                AppTypography.soraSemiBold.copyWith(
                  color: AppColors.blueGrey,
                  fontSize: kSize.height * 0.01905,
                ),
            readOnly: widget.readOnly ?? false,
            enabled: widget.enabled ?? true,
            textInputAction: widget.textInputAction ?? TextInputAction.next,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.words,
            autovalidateMode:
                widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
            onChanged: widget.onChanged,
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!();
              }
            },
            validator: (value) {
              if (widget.validator != null && !widget.validator!(value)) {
                return widget.errorMessage ??
                    "Please enter a valid ${widget.label.toLowerCase()}";
              }
              return null;
            },
            obscureText: widget.obscureText,
            controller: widget.controller,
            maxLines: widget.maxLines ?? 1,
            maxLength: widget.maxLength,
            obscuringCharacter: '*',
            keyboardType: widget.keyboardType,
            cursorColor: AppColors.blueGrey,
            // cursorHeight: kSize.height * 0.026,
            decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: kSize.height * 0.02505,
                    horizontal: kSize.width * .03),
                isDense: true,
                counter: widget.counter ?? const SizedBox(),
                counterText: widget.counterText,
                fillColor: AppColors.textFieldFillColor,
                suffixIcon: widget.suffix,
                suffixIconConstraints:
                    BoxConstraints(maxWidth: kSize.width * 0.138),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.blackColor.withOpacity(.05)),
                    borderRadius: BorderRadius.circular(kSize.height * 0.006)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.blackColor.withOpacity(.05)),
                    borderRadius: BorderRadius.circular(kSize.height * 0.006)),
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(kSize.height * 0.006)),
                errorStyle: const TextStyle(fontFamily: "Airbnb Cereal App"),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.blackColor.withOpacity(.05)),
                    borderRadius: BorderRadius.circular(kSize.height * 0.006)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.blackColor.withOpacity(.05)),
                    borderRadius: BorderRadius.circular(kSize.height * 0.006)),
                hintText: widget.hint,
                hintStyle: widget.hintStyle ??
                    AppTypography.airbnbCerealRegular.copyWith(
                        color: AppColors.greyColor,
                        fontSize: kSize.height * 0.018),
                prefix: widget.prefix,
                prefixIcon: widget.prefixIcon),
          ),
        ],
      ),
    );
  }
}
