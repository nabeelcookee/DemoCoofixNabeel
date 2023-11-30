import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class FilterList extends StatefulWidget {
  const FilterList(
      {super.key, required this.filterList, required this.onSelected});
  final List<String> filterList;
  final Function(int) onSelected;
  @override
  State<FilterList> createState() => _FilterListState();
}
class _FilterListState extends State<FilterList> {
  final selectedIndex = ValueNotifier(0);

  @override            
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return SizedBox(
      height: kSize.height * 0.0526,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: kSize.width * 0.044),
        scrollDirection: Axis.horizontal,
        itemCount: widget.filterList.length,
        itemBuilder: (context, index) {
          return filterTile(kSize, index);
        },
      ),
    );
  }
  Widget filterTile(Size kSize, int index) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, value, child) {
        return InkWell(
          highlightColor: AppColors.transparent,
          splashColor: AppColors.transparent,
          onTap: () {
            selectedIndex.value = index;
            widget.onSelected(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: kSize.width * 0.0222),
            padding: EdgeInsets.symmetric(
                horizontal: kSize.width * 0.0444,
                vertical: kSize.height * 0.0105),
            decoration: BoxDecoration(
                color: selectedIndex.value == index
                    ? AppColors.primaryColor
                    : AppColors.filterGrey,
                borderRadius: BorderRadius.circular(kSize.height * 0.00526)),
            child: Text(widget.filterList[index],
                style: AppTypography.soraSemiBold.copyWith(
                    fontSize: kSize.height * 0.01910,
                    color: selectedIndex.value == index
                        ? AppColors.secondaryColor
                        : AppColors.blueGrey1)),
          ),
        );
      },
    );
  }
}
