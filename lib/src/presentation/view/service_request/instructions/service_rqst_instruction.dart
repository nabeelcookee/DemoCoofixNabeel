import 'dart:io';

import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/form_validators.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class ServiceRqstInstructionsView extends StatefulWidget {
  const ServiceRqstInstructionsView({super.key});

  @override
  State<ServiceRqstInstructionsView> createState() =>
      _ServiceRqstInstructionsViewState();
}

class _ServiceRqstInstructionsViewState
    extends State<ServiceRqstInstructionsView> {
  TextEditingController noteController = TextEditingController();

  List<String> selectedImages = [];
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.secondaryColor,
      body: ScrollConfiguration(
        behavior: NoGlowScrollBehaviour(),
        child: SizedBox(
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
                      SizedBox(height: kSize.height * .06),
                      const CustomAppBar(
                          title: AppStrings.notesAndInstructions,
                          description: AppStrings.selectServiceDescription),
                      noteTextField(kSize),
                      SizedBox(
                        height: kSize.height * .015,
                      ),
                      Text(
                        "Upload Images ( Optional )",
                        style: AppTypography.soraRegular.copyWith(
                            fontSize: kSize.height * .019,
                            color: AppColors.blueGrey1),
                      ),
                      SizedBox(
                        height: kSize.height * .015,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: selectedImages.length < 6
                            ? selectedImages.length + 1
                            : 6,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return index == 0 && selectedImages.length < 6
                              ? Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          kSize.height * 0.0105),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.blackColor.withOpacity(.1),
                                          AppColors.blackColor.withOpacity(.01)
                                        ],
                                      )),
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    height: kSize.height * 0.144,
                                    width: kSize.width * 0.303,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightGreyColor,
                                        borderRadius: BorderRadius.circular(
                                            kSize.height * 0.0105)),
                                    child: IconButton(
                                      icon: const Icon(Icons.add_circle_rounded,
                                          color: AppColors.buttonGreyColor),
                                      onPressed: _openFilePicker,
                                    ),
                                  ),
                                )
                              : Container(
                                  clipBehavior: Clip.antiAlias,
                                  height: kSize.height * 0.144,
                                  width: kSize.width * 0.303,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGreyColor,
                                      borderRadius: BorderRadius.circular(
                                          kSize.height * 0.0105)),
                                  child: Image.file(
                                      File(selectedImages.length < 6
                                          ? selectedImages[index - 1]
                                          : selectedImages[index]),
                                      fit: BoxFit.cover),
                                );
                        },
                      ),
                      SizedBox(
                        height: kSize.height * .025,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.checkboxIcon,
                            height: kSize.height * 0.0315,
                          ),
                          SizedBox(
                            width: kSize.width * .02,
                          ),
                          Text(
                            'Minimum service charge - ₹200',
                            style: AppTypography.soraRegular.copyWith(
                                color: AppColors.darkGrey1,
                                fontSize: kSize.height * .019),
                          )
                        ],
                      ),
                      SizedBox(
                        height: kSize.height * .01,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.checkboxIcon,
                            height: kSize.height * 0.0315,
                          ),
                          SizedBox(
                            width: kSize.width * .02,
                          ),
                          Flexible(
                            child: Text(
                              'Extra charge for spare part will be applicable if required',
                              style: AppTypography.soraRegular.copyWith(
                                  color: AppColors.darkGrey1,
                                  fontSize: kSize.height * .019),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      PrimaryButton(
                        text: AppStrings.requestService,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouterConstants.requestDateAndTimeRoute);
                        },
                      ),
                      SizedBox(
                        width: kSize.width * .015,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget noteTextField(Size kSize) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: 150,
        style: AppTypography.soraRegular.copyWith(
          color: AppColors.blueGrey,
          fontSize: kSize.height * 0.01905,
        ),
        validator: (value) {
          if (FormValidators.emptyValidate(value!)) {
            return null;
          }
          return 'Please enter any note';
        },
        controller: noteController,
        cursorColor: AppColors.primaryColor,
        maxLines: 4,
        decoration: InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.symmetric(
              vertical: kSize.height * 0.02505, horizontal: kSize.width * .03),
          isDense: true,
          fillColor: AppColors.textFieldFillColor,
          suffixIconConstraints: BoxConstraints(maxWidth: kSize.width * 0.138),
          disabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(.05)),
              borderRadius: BorderRadius.circular(kSize.height * 0.006)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(.05)),
              borderRadius: BorderRadius.circular(kSize.height * 0.006)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(kSize.height * 0.006)),
          errorStyle: const TextStyle(fontFamily: "Airbnb Cereal App"),
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(.05)),
              borderRadius: BorderRadius.circular(kSize.height * 0.006)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.blackColor.withOpacity(.05)),
              borderRadius: BorderRadius.circular(kSize.height * 0.006)),
        ));
  }

  Future<void> _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );

    if (result != null) {
      List<String> imagePaths = result.paths.map((path) => path!).toList();
      setState(() {
        selectedImages.addAll(imagePaths);
      });
    }
  }
}
