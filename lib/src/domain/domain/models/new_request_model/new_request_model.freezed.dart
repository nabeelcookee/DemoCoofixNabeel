// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewRequestModel _$NewRequestModelFromJson(Map<String, dynamic> json) {
  return _NewRequestModel.fromJson(json);
}

/// @nodoc
mixin _$NewRequestModel {
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_request_image_base_url')
  String get requestImageBaseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image_base_url')
  String get productImageBaseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_image_base_url')
  String get serviceImageBaseUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewRequestModelCopyWith<NewRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRequestModelCopyWith<$Res> {
  factory $NewRequestModelCopyWith(
          NewRequestModel value, $Res Function(NewRequestModel) then) =
      _$NewRequestModelCopyWithImpl<$Res, NewRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'service_request_image_base_url')
      String requestImageBaseUrl,
      @JsonKey(name: 'product_image_base_url') String productImageBaseUrl,
      @JsonKey(name: 'service_image_base_url') String serviceImageBaseUrl});
}

/// @nodoc
class _$NewRequestModelCopyWithImpl<$Res, $Val extends NewRequestModel>
    implements $NewRequestModelCopyWith<$Res> {
  _$NewRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? requestImageBaseUrl = null,
    Object? productImageBaseUrl = null,
    Object? serviceImageBaseUrl = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      requestImageBaseUrl: null == requestImageBaseUrl
          ? _value.requestImageBaseUrl
          : requestImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      productImageBaseUrl: null == productImageBaseUrl
          ? _value.productImageBaseUrl
          : productImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceImageBaseUrl: null == serviceImageBaseUrl
          ? _value.serviceImageBaseUrl
          : serviceImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewRequestModelImplCopyWith<$Res>
    implements $NewRequestModelCopyWith<$Res> {
  factory _$$NewRequestModelImplCopyWith(_$NewRequestModelImpl value,
          $Res Function(_$NewRequestModelImpl) then) =
      __$$NewRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'service_request_image_base_url')
      String requestImageBaseUrl,
      @JsonKey(name: 'product_image_base_url') String productImageBaseUrl,
      @JsonKey(name: 'service_image_base_url') String serviceImageBaseUrl});
}

/// @nodoc
class __$$NewRequestModelImplCopyWithImpl<$Res>
    extends _$NewRequestModelCopyWithImpl<$Res, _$NewRequestModelImpl>
    implements _$$NewRequestModelImplCopyWith<$Res> {
  __$$NewRequestModelImplCopyWithImpl(
      _$NewRequestModelImpl _value, $Res Function(_$NewRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? requestImageBaseUrl = null,
    Object? productImageBaseUrl = null,
    Object? serviceImageBaseUrl = null,
  }) {
    return _then(_$NewRequestModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      requestImageBaseUrl: null == requestImageBaseUrl
          ? _value.requestImageBaseUrl
          : requestImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      productImageBaseUrl: null == productImageBaseUrl
          ? _value.productImageBaseUrl
          : productImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceImageBaseUrl: null == serviceImageBaseUrl
          ? _value.serviceImageBaseUrl
          : serviceImageBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewRequestModelImpl implements _NewRequestModel {
  _$NewRequestModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'service_request_image_base_url')
      this.requestImageBaseUrl = '',
      @JsonKey(name: 'product_image_base_url') this.productImageBaseUrl = '',
      @JsonKey(name: 'service_image_base_url') this.serviceImageBaseUrl = ''});

  factory _$NewRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'service_request_image_base_url')
  final String requestImageBaseUrl;
  @override
  @JsonKey(name: 'product_image_base_url')
  final String productImageBaseUrl;
  @override
  @JsonKey(name: 'service_image_base_url')
  final String serviceImageBaseUrl;

  @override
  String toString() {
    return 'NewRequestModel(status: $status, message: $message, requestImageBaseUrl: $requestImageBaseUrl, productImageBaseUrl: $productImageBaseUrl, serviceImageBaseUrl: $serviceImageBaseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewRequestModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requestImageBaseUrl, requestImageBaseUrl) ||
                other.requestImageBaseUrl == requestImageBaseUrl) &&
            (identical(other.productImageBaseUrl, productImageBaseUrl) ||
                other.productImageBaseUrl == productImageBaseUrl) &&
            (identical(other.serviceImageBaseUrl, serviceImageBaseUrl) ||
                other.serviceImageBaseUrl == serviceImageBaseUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      requestImageBaseUrl, productImageBaseUrl, serviceImageBaseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewRequestModelImplCopyWith<_$NewRequestModelImpl> get copyWith =>
      __$$NewRequestModelImplCopyWithImpl<_$NewRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewRequestModelImplToJson(
      this,
    );
  }
}

abstract class _NewRequestModel implements NewRequestModel {
  factory _NewRequestModel(
      {@JsonKey(name: 'status') final bool status,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: 'service_request_image_base_url')
      final String requestImageBaseUrl,
      @JsonKey(name: 'product_image_base_url') final String productImageBaseUrl,
      @JsonKey(name: 'service_image_base_url')
      final String serviceImageBaseUrl}) = _$NewRequestModelImpl;

  factory _NewRequestModel.fromJson(Map<String, dynamic> json) =
      _$NewRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'service_request_image_base_url')
  String get requestImageBaseUrl;
  @override
  @JsonKey(name: 'product_image_base_url')
  String get productImageBaseUrl;
  @override
  @JsonKey(name: 'service_image_base_url')
  String get serviceImageBaseUrl;
  @override
  @JsonKey(ignore: true)
  _$$NewRequestModelImplCopyWith<_$NewRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
