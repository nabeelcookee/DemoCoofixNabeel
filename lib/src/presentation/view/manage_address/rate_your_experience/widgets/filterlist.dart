import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class FeedBackFilterList extends StatefulWidget {
  const FeedBackFilterList({super.key, required this.kSize});
  final Size kSize;

  @override
  State<FeedBackFilterList> createState() => _FeedBackFilterListState();
}

class _FeedBackFilterListState extends State<FeedBackFilterList> {
  List selectedIndices = [];
  List<String> filterTitle = [
    "Professional and Courteous Staff",
    "Quality of Work",
    "Value for Money",
    "Communication",
    "Timely Service"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.kSize.width * 0.021),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: widget.kSize.height * 0.01,
        direction: Axis.horizontal,
        children: List.generate(filterTitle.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                setState(() {
                  if (selectedIndices.contains(index)) {
                    selectedIndices.remove(index);
                  } else {
                    selectedIndices.add(index);
                  }
                });
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              margin: EdgeInsets.only(right: widget.kSize.width * 0.0222),
              padding: EdgeInsets.symmetric(
                  horizontal: widget.kSize.width * 0.0444,
                  vertical: widget.kSize.height * 0.0105),
              decoration: BoxDecoration(
                color: selectedIndices.contains(index)
                    ? AppColors.primaryColor
                    : AppColors.rqstTileGradientTop,
                borderRadius:
                    BorderRadius.circular(widget.kSize.height * 0.01226),
              ),
              child: FittedBox(
                child: Text(
                  filterTitle[index],
                  style: AppTypography.soraRegular.copyWith(
                      fontSize: widget.kSize.height * 0.01910,
                      color: selectedIndices.contains(index)
                          ? AppColors.secondaryColor
                          : AppColors.blueGrey1),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
