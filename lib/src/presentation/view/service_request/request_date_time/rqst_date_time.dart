import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/view/choose_address/choose_address_bottom_sheet.dart';
import 'package:coofix/src/presentation/view/service_request/widgets/custom_app_bar.dart';
import 'package:coofix/src/presentation/view/service_request/widgets/spinner_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class ServiceRqstDateTimeView extends StatefulWidget {
  const ServiceRqstDateTimeView({super.key});

  @override
  State<ServiceRqstDateTimeView> createState() =>
      _ServiceRqstDateTimeViewState();
}

class _ServiceRqstDateTimeViewState extends State<ServiceRqstDateTimeView> {
  DateTime selectedDate = DateTime.now();
  List<String> time = ['Morning', 'Afternoon'];
  final selectedIndex = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SizedBox(
          height: kSize.height,
          width: kSize.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const CommonBackground(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConstants.basePadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kSize.height * .05),
                    const CustomAppBar(
                        title: AppStrings.preferredDateAndTime,
                        description: AppStrings.convinientDateAndTime),
                    SizedBox(height: kSize.height * 0.0263),
                    SpinnerDatePicker(
                        looping: true, // default is not looping
                        firstDate: DateTime.now(), //DateTime(1960),

                        dateFormat: "MMMM dd,EEEE",
                        onChange: (DateTime newDate, _) {
                          setState(() {
                            selectedDate = newDate;
                          });
                        },
                        pickerTheme: DateTimePickerTheme(
                          pickerHeight: 250,
                          itemHeight: 50,
                          backgroundColor: Colors.transparent,
                          itemTextStyle: AppTypography.soraRegular.copyWith(
                              fontSize: kSize.height * .019,
                              color: AppColors.blackColor),
                          dividerColor: AppColors.filterGrey,
                        )),
                    SizedBox(height: kSize.height * .03),
                    Text('Time Selection',
                        style: AppTypography.soraRegular.copyWith(
                            color: AppColors.blueGrey1,
                            fontSize: kSize.height * .019)),
                    SizedBox(height: kSize.height * .02),
                    ValueListenableBuilder(
                      valueListenable: selectedIndex,
                      builder: (context, value, child) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              vertical: kSize.height * .01),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.blackColor.withOpacity(.08)),
                              color: AppColors.textFieldFillColor,
                              borderRadius:
                                  BorderRadius.circular(kSize.height * 0.0052)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  2, (index) => timeWidget(kSize, index))),
                        );
                      },
                    ),
                    const Spacer(),
                    PrimaryButton(
                      text: AppStrings.continueButtonText,
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isDismissible: true,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft:
                                      Radius.circular(kSize.height * 0.0315),
                                  topRight:
                                      Radius.circular(kSize.height * 0.0315))),
                          builder: (context) {
                            return const ChooseAddressBottomSheet();
                          },
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget timeWidget(Size kSize, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          selectedIndex.value = index;
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 5, left: 5),
          padding: EdgeInsets.symmetric(
              horizontal: kSize.width * .04, vertical: kSize.height * .015),
          decoration: BoxDecoration(
              color: selectedIndex.value == index
                  ? AppColors.blackColor
                  : AppColors.timeButtonGrey,
              borderRadius: BorderRadius.circular(kSize.height * 0.0052)),
          child: Text(time[index],
              style: AppTypography.soraRegular.copyWith(
                  fontSize: kSize.height * .019,
                  color: selectedIndex.value == index
                      ? AppColors.secondaryColor
                      : AppColors.blueGrey1)),
        ),
      ),
    );
  }
}
