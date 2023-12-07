import 'package:coofix/src/domain/domain/models/profile_model/profile_model.dart';

abstract class IgetProfileRepositry{
  Future<ProfileModel>upadeProfile({required String name});
}