// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['_id'] as String? ?? '',
      rowId: json['row_id'] as String? ?? '',
      name: json['user_name'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
      image: json['image'] as String? ?? '',
      active: json['active'] as bool? ?? false,
      lastLoggedIn: json['last_logged_in'] as String? ?? '',
      accessToken: json['access_tokken'] as String? ?? '',
      userid: json['user_id'] as String? ?? '',
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'row_id': instance.rowId,
      'user_name': instance.name,
      'phone_number': instance.phoneNumber,
      'image': instance.image,
      'active': instance.active,
      'last_logged_in': instance.lastLoggedIn,
      'access_tokken': instance.accessToken,
      'user_id': instance.userid,
    };
