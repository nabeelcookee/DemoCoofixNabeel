import 'dart:developer';

import 'package:coofix/src/application/get_servieces/get_services_bloc.dart';
import 'package:coofix/src/application/get_servieces/get_services_event.dart';
import 'package:coofix/src/application/get_servieces/get_services_state.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/core/widgets/background.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/view/service_request/request_bottom_sheet/service_rqst_bottom_sheet.dart';
import 'package:coofix/src/presentation/view/service_request/widgets/custom_app_bar.dart';
import 'package:coofix/src/presentation/view/service_request/widgets/service_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceRequestView extends StatefulWidget {
  const ServiceRequestView({super.key});

  @override
  State<ServiceRequestView> createState() => _ServiceRequestViewState();
}

class _ServiceRequestViewState extends State<ServiceRequestView> {
  String? ServiceId;
  @override
  void initState() {
    context
        .read<GetServicesBloc>()
        .add(GetServicesEvent.getServices(limit: 0, skip: 0, id: ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("ServiceId is ${ServiceId}");
    final kSize = MediaQuery.of(context).size;
    return BlocBuilder<GetServicesBloc, ServiceState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.secondaryColor,
          extendBody: true,
          bottomNavigationBar: _footerButton(kSize, ServiceId ?? ""),
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
                              title: AppStrings.selectService,
                              description: AppStrings.selectServiceDescription),
                          Expanded(
                            child: ServiceGridTile(
                                getServicesId: (String serviceId) {
                              setState(() {});
                              ServiceId = serviceId;
                              print("service id is.. ${ServiceId}");
                            }),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }

  Widget _footerButton(Size kSize, String selecterServiceId) {
    return BlocBuilder<GetServicesBloc, ServiceState>(
      builder: (context, state) {
        return Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.basePadding,
                vertical: AppConstants.basePadding),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: AppColors.secondaryColor.withOpacity(.5),
                  offset: const Offset(16, 16),
                  blurRadius: 80,
                  spreadRadius: 80)
            ]),
            child: PrimaryButton(
              text: AppStrings.continueButtonText,
              onPressed: () {
                print("to boottum sheet ${selecterServiceId.toString()}");
                showModalBottomSheet(
                  backgroundColor: AppColors.secondaryColor,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kSize.height * 0.0315),
                          topRight: Radius.circular(kSize.height * 0.0315))),
                  context: context,
                  builder: (context) {
                    return ServiceRequestBottomSheet(
                      serviceId: selecterServiceId,
                    );
                  },
                );
              },
            ));
      },
    );
  }
}
