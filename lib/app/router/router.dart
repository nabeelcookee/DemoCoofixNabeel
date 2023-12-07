// Put your routing related code here
import 'package:coofix/src/presentation/view/auth/login/login_view.dart';
import 'package:coofix/src/presentation/view/bottom_nav/bottom_nav.dart';
import 'package:coofix/src/presentation/view/manage_address/add_new_address/add_new_address_view.dart';
import 'package:coofix/src/presentation/view/manage_address/feedbackthankyou/feedbackthankyou_screen.dart';
import 'package:coofix/src/presentation/view/manage_address/manage_address_view.dart';
import 'package:coofix/src/presentation/view/manage_address/rate_your_experience/rate_your_experience_view.dart';
import 'package:coofix/src/presentation/view/onboarding/onboarding/onboarding_view.dart';
import 'package:coofix/src/presentation/view/onboarding/splash/splash_view.dart';
import 'package:coofix/src/presentation/view/otp_verification/otp_verification_view.dart';
import 'package:coofix/src/presentation/view/request_success/request_success_view.dart';
import 'package:coofix/src/presentation/view/requests/request_detail_view.dart';
import 'package:coofix/src/presentation/view/service_detail/service_detail_view.dart';
import 'package:coofix/src/presentation/view/service_request/request_date_time/rqst_date_time.dart';
import 'package:coofix/src/presentation/view/service_request/service_request/service_request_view.dart';
import 'package:coofix/src/presentation/view/service_request/instructions/service_rqst_instruction.dart';
import 'package:flutter/material.dart';
import 'router_constants.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstants.splashRoute:
        return MaterialPageRoute<SplashView>(
          builder: (_) => const SplashView(),
        );
      case RouterConstants.onboardingRoute:
        return MaterialPageRoute<OnboardingView>(
          builder: (_) => const OnboardingView(),
        );
      case RouterConstants.loginRoute:
        return MaterialPageRoute<LoginView>(
          builder: (_) => const LoginView(),
        );
      case RouterConstants.otpVerificationRoute:
        final arg = settings.arguments as String;
        return MaterialPageRoute<OtpVerificationView>(
          builder: (_) => OtpVerificationView(phoneNumber: arg),
        );
      case RouterConstants.bottomNavRoute:
        final arg = settings.arguments;
        return MaterialPageRoute<BottomNavBar>(
          builder: (_) => BottomNavBar(selectedIndex: arg as int),
        );
      case RouterConstants.requestDetailRoute:
        return MaterialPageRoute<RequestDetailView>(
          builder: (_) => const RequestDetailView(),
        );
      case RouterConstants.serviceDetailRoute:
       int?index;
        return MaterialPageRoute<ServiceDetailView>(
          builder: (_) =>  ServiceDetailView(index: index??0,),
        );
      case RouterConstants.serviceRequestRoute:
        return MaterialPageRoute<ServiceRequestView>(
          builder: (_) => const ServiceRequestView(),
        );
      case RouterConstants.notesAndRestrictionRoute:
        final arg = settings.arguments as String;
        return MaterialPageRoute<ServiceRqstInstructionsView>(
          builder: (_) =>  ServiceRqstInstructionsView(selectedServieceId:arg  ),
        );
      case RouterConstants.requestDateAndTimeRoute:
      final arg =settings.arguments as String;
        return MaterialPageRoute<ServiceRqstDateTimeView>(
          builder: (_) =>  ServiceRqstDateTimeView(selectedServieceId: arg),
        );
      case RouterConstants.manageAddressRoute:
        return MaterialPageRoute<ManageDetailScreen>(
          builder: (_) => const ManageDetailScreen(),
        );
      case RouterConstants.addNewAddressRoute:
        return MaterialPageRoute<AddNewAddressScreen>(
          builder: (_) => const AddNewAddressScreen(),
        );
      case RouterConstants.feedBackRoute:
        return MaterialPageRoute<RateYourExperienceScreen>(
          builder: (_) => RateYourExperienceScreen(),
        );
      case RouterConstants.feedBackThankYouRoute:
        return MaterialPageRoute<FeedBackThankYouScreen>(
          builder: (_) => const FeedBackThankYouScreen(),
        );
      case RouterConstants.requestSuccessRoute:
        return MaterialPageRoute<RequestSuccessView>(
          builder: (_) => const RequestSuccessView(),
        );
      default:
        return MaterialPageRoute<Scaffold>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
