
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.g.dart';
part 'app_user_model.freezed.dart';

@freezed
class AppUser with _$AppUser{
  factory AppUser({
   
  @JsonKey(name: '_id') @Default('') String id,
  @JsonKey(name: 'row_id')@Default('')  String rowId,
  @JsonKey(name: 'name') @Default('') String name,
   @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
   @Default('') String image,
   @Default(false) bool active,
   @JsonKey(name: 'last_logged_in') @Default('') String lastLoggedIn, 
   @JsonKey(name: 'user_id')@Default('')String userid
  })= _AppUser;
 
  factory AppUser.fromJson(Map<String, dynamic> json)=> _$AppUserFromJson(json);
}