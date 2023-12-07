import 'package:coofix/src/application/prodect_bloc/prodect_bloc.dart';
import 'package:coofix/src/application/prodect_bloc/prodect_state.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/custom_gradient_tile.dart';
import 'package:coofix/src/presentation/core/widgets/footer_button.dart';
import 'package:coofix/src/presentation/view/service_request/service_request/service_request_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsTile extends StatefulWidget {
  const ProductsTile({super.key , required this.index});
   final int index;
  @override
  State<ProductsTile> createState() => _ProductsTileState();
}

class _ProductsTileState extends State<ProductsTile> {
  @override
  void initState() {
    context
        .read<ProdectBloc>()
        .add(  ProdectEvent.getProdects(skip: 0, limit: 0, id: ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return CustomGradientTile(
        width: kSize.width,
        gradient: const LinearGradient(colors: [
          AppColors.rqstTileGradientTop,
          AppColors.rqstTileGradientCenter,
          AppColors.rqstTileGradientBottom
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        child: BlocBuilder<ProdectBloc, ProdectState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Flexible(
                    child: Container(
                      height: kSize.height * 0.1421,
                      width: kSize.height * 0.1421,
                      decoration: BoxDecoration(
                          image:  DecorationImage(
                              image: AssetImage("${AppConstants.prodectImageBaseUrl}/${state.prodectList[widget.index].image??""}"),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.circular(kSize.height * 0.01052)),
                    ),
                  ),
                  SizedBox(
                    width: kSize.width * .0444,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: kSize.width * 0.011,
                              vertical: kSize.height * 0.00263),
                          decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.circular(
                                  kSize.height * 0.00263)),
                          child: Text('Warrenty Status :${state.prodectList[widget.index].active}',
                              style: AppTypography.airbnbCerealMedium.copyWith(
                                  color: AppColors.secondaryColor,
                                  fontSize: kSize.height * 0.0155)),
                        ),
                        SizedBox(
                          height: kSize.height * .01,
                        ),
                        Text(
                          'Air Conditioner Repair',
                          maxLines: 2,
                          style: AppTypography.soraBold.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: kSize.height * 0.0190),
                        ),
                        Text(
                        state.prodectList[widget.index].productSerialNumber??"",
                          style: AppTypography.soraBold.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: kSize.height * 0.0190),
                        ),
                      ],
                    ),
                  )
                ]),
                SizedBox(
                  height: kSize.height * .015,
                ),
                Text(
                  'Service Coverage: ${state.prodectList[widget.index].year}',
                  style: AppTypography.soraRegular.copyWith(
                      color: AppColors.blueGrey1,
                      fontSize: kSize.height * 0.0190),
                ),
                SizedBox(
                  height: kSize.height * .015,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomGradientTile(
                          width: kSize.width,
                          color: AppColors.secondaryColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                AppImages.calendarTickIcon,
                                height: kSize.height * 0.0421,
                              ),
                              SizedBox(
                                height: kSize.height * .01,
                              ),
                              Text(
                                AppStrings.purchaseDate,
                                style: AppTypography.soraRegular.copyWith(
                                    color: AppColors.blueGrey1,
                                    fontSize: kSize.height * 0.0155),
                              ),
                              SizedBox(
                                height: kSize.height * .01,
                              ),
                              FittedBox(
                                child: Text(
                                  state.prodectList[widget.index].purchaseDate??"",
                                  style: AppTypography.soraSemiBold.copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: kSize.height * 0.0190),
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      width: kSize.width * 0.0333,
                    ),
                    Flexible(
                      child: CustomGradientTile(
                          width: kSize.width,
                          color: AppColors.secondaryColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                AppImages.calendarTickIcon,
                                height: kSize.height * 0.0421,
                              ),
                              SizedBox(
                                height: kSize.height * .01,
                              ),
                              Text(
                                AppStrings.endDate,
                                style: AppTypography.soraRegular.copyWith(
                                    color: AppColors.blueGrey1,
                                    fontSize: kSize.height * 0.0155),
                              ),
                              SizedBox(
                                height: kSize.height * .01,
                              ),
                              FittedBox(
                                child: Text(
                                  'June 20, 2023',
                                  style: AppTypography.soraSemiBold.copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: kSize.height * 0.0190),
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
                FooterButton(
                  onTap: () {
                    
                  },
                  label: 'Request Service',
                  fontSize: kSize.height * .019,
                  width: kSize.width,
                ),
                SizedBox(
                  height: kSize.height * .01,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: AppColors.lightGrey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.historyIcon,
                            height: kSize.height * 0.0315),
                        SizedBox(width: kSize.width * .02),
                        Text('Service History',
                            style: AppTypography.soraSemiBold.copyWith(
                                color: AppColors.blueGrey1,
                                fontSize: kSize.height * .019)),
                      ],
                    ))
              ],
            );
          },
        ));
  }
}
