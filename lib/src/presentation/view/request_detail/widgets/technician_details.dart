import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TechnicianDetails extends StatefulWidget {
  const TechnicianDetails({super.key});

  @override
  State<TechnicianDetails> createState() => _TechnicianDetailsState();
}

class _TechnicianDetailsState extends State<TechnicianDetails> {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: kSize.height * 0.0947,
              width: kSize.height * 0.0947,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(AppImages.onboardingImage, fit: BoxFit.cover),
            ),
            SizedBox(
              width: kSize.width * 0.0410,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Smith',
                  style: AppTypography.soraSemiBold.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: kSize.height * 0.0190),
                ),
                SizedBox(
                  height: kSize.height * 0.008,
                ),
                Text(
                  '8 Year’s of experience',
                  style: AppTypography.soraRegular.copyWith(
                      color: AppColors.blueGrey1,
                      fontSize: kSize.height * 0.0190),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: kSize.height * 0.0315,
        ),
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                text: '',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.callIcon,
                      height: kSize.height * 0.0315,
                    ),
                    SizedBox(width: kSize.width * .01),
                    Text(
                      'Call Jhon',
                      style: AppTypography.soraSemiBold.copyWith(
                          color: AppColors.secondaryColor,
                          fontSize: kSize.height * 0.0190),
                    ),
                  ],
                ),
                onPressed: () {
                  launchDIaler('8606936845');
                },
              ),
            ),
            SizedBox(width: kSize.width * 0.0222),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: AppColors.greyColor,
                    side: const BorderSide(color: AppColors.primaryColor),
                    padding: EdgeInsets.symmetric(
                        horizontal: kSize.width * 0.01,
                        vertical: kSize.height * 0.017)),
                onPressed: () {},
                child: Image.asset(
                  AppImages.mapIcon,
                  height: kSize.height * 0.035,
                ))
          ],
        ),
      ],
    );
  }

  launchDIaler(String phoneNumber) async {
    String message = "No phone number given";
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    try {
      if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
        }
      }
    } catch (_) {}
  }
}
