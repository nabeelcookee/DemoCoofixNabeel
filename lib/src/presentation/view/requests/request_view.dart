import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/view/requests/widgets/filter_list.dart';
import 'package:flutter/material.dart';

import 'widgets/request_tile.dart';

class RequestView extends StatefulWidget {
const RequestView({super.key});

  @override
  State<RequestView> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  List<String> filterList = ["All Requests", 'In Progress', 'Completed'];
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return ScrollConfiguration(
      behavior: NoGlowScrollBehaviour(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: kSize.height * 0.0515),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kSize.width * 0.044),
            child: Text(
              AppStrings.myRequests,
              style: AppTypography.soraSemiBold.copyWith(
                fontSize: kSize.height * 0.02857,
              ),
            ),
          ),
          SizedBox(
            height: kSize.height * 0.02105,
          ),
          FilterList(
            filterList: filterList,
            onSelected: (value) {},
          ),
          SizedBox(
            height: kSize.height * 0.02105,
          ),
          monthDateList(kSize)
        ],
      ),
    );
  }

  Widget monthDateList(Size kSize) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        primary: false,
        padding: EdgeInsets.only(
            left: kSize.width * 0.044,
            top: kSize.height * .01,
            right: kSize.width * 0.044,
            bottom: kSize.height * .1),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'June 2023',
                style: AppTypography.soraRegular.copyWith(
                    fontSize: kSize.height * 0.0147,
                    color: AppColors.blueGrey1),
              ),
              SizedBox(height: kSize.height * 0.0157),
              requestList(kSize),
              SizedBox(height: kSize.height * 0.0157),
            ],
          );
        },
      ),
    );
  }

  Widget requestList(Size kSize) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.zero,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const RequestTile();
      },
    );
  }
}
