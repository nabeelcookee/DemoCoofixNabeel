import 'package:coofix/src/application/address_bloc/address_bloc.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressContainer extends StatelessWidget {
  AddressContainer({super.key, required this.kSize ,required this.index});
  final Size kSize;
  final int index;
  final List<String> addressTitle = [
    "Home",
    "Work",
  ];
  final List<String> addressIcon = [
    AppImages.manageAddressHomeIcom,
    AppImages.workicon,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressBloc, AddressState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: state.address.length,
          itemExtent: null,
          itemBuilder: (context, int index) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(1),
              width: kSize.width,
              margin: EdgeInsets.only(bottom: kSize.height * 0.01),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kSize.height * 0.0157),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.gradientColorTop,
                        AppColors.secondaryColor.withOpacity(.02)
                      ])),
              child: Container(
                width: kSize.width,
                padding: EdgeInsets.symmetric(
                    horizontal: kSize.width * 0.0444,
                    vertical: kSize.height * 0.0210),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      AppColors.rqstTileGradientTop,
                      AppColors.rqstTileGradientCenter,
                      AppColors.rqstTileGradientBottom
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(kSize.height * 0.0157)),
                margin: EdgeInsets.only(bottom: kSize.height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Image.asset(addressIcon[index],
                          height: kSize.height * 0.031),
                      SizedBox(width: kSize.width * .02),
                      Text(
                        addressTitle[index],
                        style: AppTypography.soraSemiBold.copyWith(
                          color: const Color(0xFF64727B),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: kSize.height * .017,
                    ),
                    RichText(
                      text: TextSpan(
                        text: state.address[index].fullName,
                        style: AppTypography.soraSemiBold
                            .copyWith(fontWeight: FontWeight.w700),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                               state.address[index].address,
                            style: AppTypography.soraRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kSize.height * .02,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xFFDEDEDE),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            //EDITING THE ADDRESS
                          },
                          icon: Image.asset(
                            AppImages.editIcon,
                            height: kSize.height * 0.03,
                          ),
                          label: Text(
                            "Edit",
                            style: AppTypography.soraRegular
                                .copyWith(fontSize: 16.0),
                          ),
                        ),
                        SizedBox(
                          width: kSize.width * 0.02,
                        ),
                        TextButton.icon(
                          onPressed: () {
                          context.read<AddressBloc>().add(AddressEvent.deletedAddress(id: state.address[index].id));
                          },
                          icon: Image.asset(
                            AppImages.trashicon,
                            height: kSize.height * 0.03,
                          ),
                          label: Text(
                            "Delete",
                            style: AppTypography.soraRegular
                                .copyWith(fontSize: 16.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
