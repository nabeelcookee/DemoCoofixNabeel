import 'package:coofix/src/domain/domain/models/app_user_model/app_user_model.dart';

abstract class IAuthRepository {
  Future<AppUser> sendOtp(String phoneNumber);
  Future<AppUser> verifyOtp({
   required String  otp,
  required String userId,
  });
  Future<AppUser>checkAuth();
  
}
