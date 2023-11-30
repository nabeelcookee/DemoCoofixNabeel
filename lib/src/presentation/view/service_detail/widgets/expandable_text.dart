import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final double max;
  const ExpandableText({Key? key, required this.text, required this.max})
      : super(key: key);
  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  TextPainter? textPainter;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return isOpen
        ? SizedBox(
            child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(children: [
                    TextSpan(
                        text: widget.text,
                        style: AppTypography.soraRegular.copyWith(
                            fontSize: kSize.height * 0.0214,
                            height: 1.6,
                            color: AppColors.blueGrey1)),
                    WidgetSpan(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                isOpen = !isOpen;
                              });
                            },
                            child: Text(
                              "Read Less",
                              style: AppTypography.soraRegular.copyWith(
                                  fontSize: kSize.height * 0.0214,
                                  decoration: TextDecoration.underline,
                                  height: 1.6,
                                  color: AppColors.blueGrey1),
                            )),
                        style: AppTypography.soraRegular.copyWith(
                            fontSize: kSize.height * 0.0214,
                            color: AppColors.blueGrey1))
                  ]),
                )))
        : Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.start,
              maxLines: 4,
              text: TextSpan(children: [
                TextSpan(
                    text:
                        "${widget.text.substring(0, int.parse("${(widget.text.length * widget.max).toInt()}"))}...",
                    style: AppTypography.soraRegular.copyWith(
                        fontSize: kSize.height * 0.0214,
                        height: 1.6,
                        color: AppColors.blueGrey1)),
                WidgetSpan(
                    child: InkWell(
                        mouseCursor: SystemMouseCursors.click,
                        onTap: () {
                          setState(() {
                            isOpen = !isOpen;
                          });
                        },
                        child: Text(
                          "Read More",
                          style: AppTypography.soraRegular.copyWith(
                              fontSize: kSize.height * 0.0214,
                              decoration: TextDecoration.underline,
                              color: AppColors.blueGrey1),
                        )),
                    style: AppTypography.soraRegular.copyWith(
                        fontSize: kSize.height * 0.0214,
                        decoration: TextDecoration.underline,
                        color: AppColors.blueGrey1))
              ]),
            ),
          );
  }
}
