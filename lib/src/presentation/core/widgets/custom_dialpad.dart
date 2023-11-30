import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class CustomDialpad extends StatelessWidget {
  final int maxLength;
  final TextEditingController controller;
  const CustomDialpad(
      {Key? key, required this.maxLength, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    List<String> numbers = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "",
      "0",
      AppImages.backSpaceIcon
    ];

    return SizedBox(
      height: kSize.height * 0.2828,
      width: kSize.width,
      child: Wrap(
        clipBehavior: Clip.antiAlias,
        runAlignment: WrapAlignment.start,
        runSpacing: kSize.height * 0.00921,
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: kSize.width * 0.0194,
        children: List.generate(12, (index) {
          if (index == 9) {
            return SizedBox(
              height: kSize.height * 0.06315,
              width: kSize.width * 0.2638,
            );
          } else if (index == 11) {
            return SizedBox(
              height: kSize.height * 0.06315,
              width: kSize.width * 0.2638,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(kSize.height * 0.01578)),
                    backgroundColor: const Color(0x00000000),
                    foregroundColor: AppColors.gradientBlue2.withOpacity(.01),
                    padding:
                        EdgeInsets.symmetric(horizontal: kSize.width * 0.0388)),
                onPressed: () {
                  _backspace();
                },
                child: Image.asset(
                  numbers[index],
                  color: AppColors.darkGrey,
                  height: kSize.height * 0.0210,
                ),
              ),
            );
          } else {
            return SizedBox(
              height: kSize.height * 0.06315,
              width: kSize.width * 0.2638,
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(kSize.height * 0.0157)),
                      backgroundColor: AppColors.secondaryColor,
                      foregroundColor: AppColors.gradientBlue2.withOpacity(.01),
                      padding: EdgeInsets.symmetric(
                          horizontal: kSize.width * 0.111)),
                  onPressed: () {
                    if (controller.text.length < maxLength) {
                      _insertText(numbers[index]);
                    }
                  },
                  child: Text(
                    numbers[index],
                    style: AppTypography.soraSemiBold.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500),
                  )),
            );
          }
        }),
      ),
    );
  }

  void _insertText(String myText) {
    final text = controller.text;
    final textSelection = controller.selection;
    final newText = text.replaceRange(
      textSelection.start,
      textSelection.end,
      myText,
    );
    final myTextLength = myText.length;
    controller.text = newText;
    controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + myTextLength,
      extentOffset: textSelection.start + myTextLength,
    );
  }

  void _backspace() {
    final text = controller.text;
    final textSelection = controller.selection;
    final selectionLength =
        textSelection.end - textSelection.start; // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      controller.text = newText;
      controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    } // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    } // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    controller.text = newText;
    controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }
}
