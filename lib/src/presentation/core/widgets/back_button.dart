import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap, this.color});
  final Function()? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap ??
          () {
            Navigator.pop(context);
          },
      child: Image.asset(AppImages.backIcon,
          height: kSize.height * 0.039, color: color),
    );
  }
}
