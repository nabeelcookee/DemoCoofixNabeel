import 'dart:async';

import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({
    Key? key,
    required this.timerMaxSeconds,
    required this.interval,
  }) : super(key: key);
  final int timerMaxSeconds;
  final Duration interval;
  @override
  OtpTimerState createState() => OtpTimerState();
}

class OtpTimerState extends State<OtpTimer> {
  int currentSeconds = 0;
  int time = 0;
  @override
  void initState() {
    time = widget.timerMaxSeconds;
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Text(
      timerText,
      style: AppTypography.soraSemiBold.copyWith(
        fontSize: kSize.height * 0.015,
        color: AppColors.blueGrey,
      ),
    );
  }

  String get timerText => '${((time - currentSeconds) ~/ 60).toString().padLeft(
        2,
        '0',
      )} : ${((time - currentSeconds) % 60).toString().padLeft(
        2,
        '0',
      )}';
  void startTimeout([int? milliseconds]) {
    final duration = widget.interval;
    Timer.periodic(duration, (timer) {
      if (!mounted) {
        return;
      }
      setState(() {
        currentSeconds = timer.tick;
        if (timer.tick >= widget.timerMaxSeconds) timer.cancel();
      });
    });
  }
}
