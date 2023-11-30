import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomTextFormFieldFeedBack extends StatefulWidget {
  CustomTextFormFieldFeedBack({
    super.key,
    required this.controllerName,
  });
  TextEditingController controllerName = TextEditingController();

  @override
  State<CustomTextFormFieldFeedBack> createState() =>
      _CustomTextFormFieldFeedBackState();
}

class _CustomTextFormFieldFeedBackState
    extends State<CustomTextFormFieldFeedBack> {
  var maxLength = 150;

  var textLength = 0;

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(150),
      ],
      onChanged: (value) {
        setState(() {
          textLength = value.length;
        });
      },
      maxLines: 4,
      cursorColor: Colors.black,
      controller: widget.controllerName,
      decoration: InputDecoration(
        counterStyle: AppTypography.soraRegular.copyWith(
            fontSize: kSize.height * 0.015, color: AppColors.blueGrey1),
        counterText:
            "${textLength.toString()}/${maxLength.toString()} Characters",
        hintText: "Additional comments or feedback.(Optional)",
        hintStyle: AppTypography.soraRegular.copyWith(
          fontSize: kSize.height * 0.02,
          color: AppColors.blueGrey1,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(kSize.height * 0.008)),
          borderSide: const BorderSide(
            width: 1.5,
            color: Color.fromARGB(255, 235, 235, 235),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: Color.fromARGB(255, 235, 235, 235),
          ),
        ),
      ),
    );
  }
}
