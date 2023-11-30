
import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/application/get_servieces/get_services_bloc.dart';
import 'package:coofix/src/application/get_servieces/get_services_event.dart';
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_bloc.dart';
import 'package:coofix/src/application/new_request_bloc/bloc/new_request_state.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: kSize.height * 0.032,
          left: AppConstants.basePadding,
          right: AppConstants.basePadding),
      child: Row(
        children: [
          Container(
            height: kSize.height * 0.04210,
            width: kSize.height * 0.04210,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.blackColor),
            child: Image.asset(AppImages.onboardingImage, fit: BoxFit.cover),
          ),
          SizedBox(width: kSize.width * 0.0277),
          Text(
            'Hey! Maddy',
            style: AppTypography.soraRegular
                .copyWith(fontSize: kSize.height * 0.0184),
          ),
          const Spacer(),
          BlocBuilder<NewRequestBloc, NewRequestState>(
            builder: (context, state) {

              return TextButton(
                  onPressed: () {
                    // TODO
                
                    Navigator.pushNamed(
                        context, RouterConstants.serviceRequestRoute);
                  context.read<GetServicesBloc>().add(GetServicesEvent.getServices(limit: 0, skip: 0, id: ""));
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add_circle,
                        color: AppColors.blueColor,
                      ),
                      SizedBox(width: kSize.width * 0.0138),
                      Text(
                        'New Request',
                        style: AppTypography.soraSemiBold
                            .copyWith(fontSize: kSize.height * 0.0184),
                      )
                    ],
                  ));
            },
          ),
        ],
      ),
    );
  }
}
