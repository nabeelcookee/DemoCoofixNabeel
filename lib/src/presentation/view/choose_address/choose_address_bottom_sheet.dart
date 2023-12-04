import 'dart:developer';

import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/application/address_bloc/address_bloc.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/custom_gradient_tile.dart';
import 'package:coofix/src/presentation/core/widgets/footer_button.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseAddressBottomSheet extends StatefulWidget {
  const ChooseAddressBottomSheet(
      {super.key,
      required this.selectedtime,
      required this.selectedServieceId,
      required this.selectedDate});
  final String selectedtime;
  final String selectedServieceId;
  final String selectedDate;

  @override
  State<ChooseAddressBottomSheet> createState() =>
      _ChooseAddressBottomSheetState();
}

class _ChooseAddressBottomSheetState extends State<ChooseAddressBottomSheet> {
  final selectedValue = ValueNotifier(0);
  late String addressid = "";
  @override
  void initState() {
    context
        .read<AddressBloc>()
        .add(const AddressEvent.getAddress(limit: 0, skip: 0, id: ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("selected service id  from address page${widget.selectedServieceId}");
    print("selected time is ${widget.selectedtime}");
    final kSize = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.85,
      expand: false,
      builder: (context, scrollController) {
        return ScrollConfiguration(
          behavior: NoGlowScrollBehaviour(),
          child: Padding(
            padding: EdgeInsets.only(
                left: AppConstants.basePadding,
                right: AppConstants.basePadding,
                top: kSize.height * 0.0315),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: kSize.height * .025,
                  ),
                  Text(
                    AppStrings.chooseYourAddress,
                    style: AppTypography.soraSemiBold
                        .copyWith(fontSize: kSize.height * 0.02957),
                  ),
                  SizedBox(
                    height: kSize.height * .006,
                  ),
                  Text(
                    AppStrings.someTextGoesHere,
                    style: AppTypography.soraRegular.copyWith(
                        fontSize: kSize.height * .019,
                        color: AppColors.blueGrey1),
                  ),
                  SizedBox(
                    height: kSize.height * .025,
                  ),
                  Expanded(
                    child: BlocBuilder<AddressBloc, AddressState>(
                      builder: (
                        context,
                        state,
                      ) {
                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: state.address.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            if (index < state.address.length) {
                              return addressTile(kSize, index);
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        );
                      },
                    ),
                  )
                ]),
                _footerButton(kSize, addressid)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget addressTile(Size kSize, int index) {
    return BlocBuilder<AddressBloc, AddressState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: selectedValue,
          builder: (context, value, child) {
            return BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) {
                return InkWell(
                  highlightColor: AppColors.transparent,
                  splashColor: AppColors.transparent,
                  onTap: () {
                    selectedValue.value = index;
                    context.read<AddressBloc>().add(
                        AddressEvent.selectedAddress(
                            id: state.address[selectedValue.value].id));
                    addressid = state.address[selectedValue.value].id;
                    log(state.address[selectedValue.value].id,
                        name: "selected address id ");
                  },
                  child: CustomGradientTile(
                    margin: EdgeInsets.only(bottom: kSize.height * .02),
                    gradient: const LinearGradient(colors: [
                      AppColors.rqstTileGradientTop,
                      AppColors.rqstTileGradientCenter,
                      AppColors.rqstTileGradientBottom
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                index / 2 == 0
                                    ? AppImages.workIcon
                                    : AppImages.homeIcon,
                                height: kSize.height * 0.0315,
                                color: AppColors.textColor,
                              ),
                              SizedBox(width: kSize.width * .02),
                              Text(
                                index / 2 == 0 ? 'Work' : 'Home',
                                style: AppTypography.soraRegular.copyWith(
                                    fontSize: kSize.height * .019,
                                    color: AppColors.blueGrey1),
                              ),
                              const Spacer(),
                              if (selectedValue.value == index)
                                selectedIndicator(kSize)
                            ],
                          ),
                          SizedBox(
                            height: kSize.height * .02,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: state.address[index].fullName,
                                  style: AppTypography.soraSemiBold.copyWith(
                                      fontSize: kSize.height * .019,
                                      color: AppColors.blackColor),
                                  children: [
                                TextSpan(
                                    text: state.address[index].address,
                                    style: AppTypography.soraRegular.copyWith(
                                        color: AppColors.blueGrey1,
                                        fontSize: kSize.height * .019))
                              ]))
                        ]),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget selectedIndicator(Size kSize) {
    return Row(
      children: [
        Image.asset(
          AppImages.tickIcon,
          height: kSize.height * 0.0315,
          color: AppColors.blueColor,
        ),
        SizedBox(width: kSize.width * .02),
        Text(
          'Selected',
          style: AppTypography.soraSemiBold.copyWith(
              fontSize: kSize.height * .019, color: AppColors.blueColor),
        ),
      ],
    );
  }

  Widget _footerButton(Size kSize, String addressId) {
    return Positioned(
      bottom: kSize.height * .019,
      right: kSize.width * 0.005,
      left: kSize.width * 0.005,
      child: Column(
        children: [
          PrimaryButton(
            text: AppStrings.continueButtonText,
            onPressed: () {
              context.read<NewRequestBloc>().add(NewRequestEvent.newrequest(
                  id: "",
                  serviceId: widget.selectedServieceId,
                  note: "Ac reparing ",
                  serviceDateSlot: widget.selectedDate.toString(),
                  serviceDateTimeSlot: widget.selectedtime,
                  addressId: addressid,
                  isRecurringService: false));
              Navigator.pushNamed(context, RouterConstants.requestSuccessRoute);
            },
          ),
          SizedBox(
            height: kSize.height * .02,
          ),
          FooterButton(
              width: kSize.width,
              onTap: () {
                Navigator.pushNamed(
                    context, RouterConstants.addNewAddressRoute);
              },
              label: '',
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.addNewAddress,
                    style: AppTypography.soraSemiBold.copyWith(
                        fontSize: kSize.height * 0.019,
                        color: AppColors.primaryColor),
                  ),
                  SizedBox(
                    width: kSize.width * .02,
                  ),
                  Image.asset(AppImages.arrowIcon,
                      height: kSize.height * 0.0295,
                      color: AppColors.blackColor),
                ],
              ))
        ],
      ),
    );
  }
}
