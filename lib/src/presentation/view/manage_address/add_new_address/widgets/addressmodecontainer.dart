import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class SaveThisAddressAsContainer extends StatefulWidget {
   final Function(int) onIndexChanged; // New parameter to receive the selected index

   SaveThisAddressAsContainer({Key? key, required this.onIndexChanged})
      : super(key: key);

  @override
  State<SaveThisAddressAsContainer> createState() =>
      _SaveThisAddressAsContainerState();
}

class _SaveThisAddressAsContainerState
    extends State<SaveThisAddressAsContainer> {
       int selectedIndex = 0;
  List<String> addressModeTitle = [
    "Home",
    "Work",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    
    final kSize = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, int index) {
        return Padding(
          padding: EdgeInsets.only(right: kSize.width * 0.025),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                // Pass the selected index to the constructor
                widget.onIndexChanged(selectedIndex);
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: kSize.width * 0.0222),
              padding: EdgeInsets.symmetric(
                  horizontal: kSize.width * 0.0444,
                  vertical: kSize.height * 0.0105),
              decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.primaryColor
                      : AppColors.rqstTileGradientTop,
                  borderRadius: BorderRadius.circular(kSize.height * 0.00526)),
              child: Text(addressModeTitle[index],
                  style: AppTypography.soraRegular.copyWith(
                      fontSize: kSize.height * 0.01910,
                      color:selectedIndex == index
                          ? AppColors.secondaryColor
                          : AppColors.blueGrey1)),
            ),
          ),
        );
      },
      itemCount: 3,
    );
  }
}
