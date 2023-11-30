// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewRequestState {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get serviceRequestImageBaseUrl => throw _privateConstructorUsedError;
  String get productImageBaseUrl => throw _privateConstructorUsedError;
  String get serviceImageBaseUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewRequestStateCopyWith<NewRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRequestStateCopyWith<$Res> {
  factory $NewRequestStateCopyWith(
          NewRequestState value, $Res Function(NewRequestState) then) =
      _$NewRequestStateCopyWithImpl<$Res, NewRequestState>;
  @useResult
  $Res call(
      {bool status,
      String message,
      String serviceRequestImageBaseUrl,
      String productImageBaseUrl,
      String serviceImageBaseUrl});
}

/// @nodoc
class _$NewRequestStateCopyWithImpl<$Res, $Val extends NewRequestState>
    implements $NewRequestStateCopyWith<$Res> {
  _$NewRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? serviceRequestImageBaseUrl = null,
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
      serviceRequestImageBaseUrl: null == serviceRequestImageBaseUrl
          ? _value.serviceRequestImageBaseUrl
          : serviceRequestImageBaseUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NewRequestStateImplCopyWith<$Res>
    implements $NewRequestStateCopyWith<$Res> {
  factory _$$NewRequestStateImplCopyWith(_$NewRequestStateImpl value,
          $Res Function(_$NewRequestStateImpl) then) =
      __$$NewRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      String message,
      String serviceRequestImageBaseUrl,
      String productImageBaseUrl,
      String serviceImageBaseUrl});
}

/// @nodoc
class __$$NewRequestStateImplCopyWithImpl<$Res>
    extends _$NewRequestStateCopyWithImpl<$Res, _$NewRequestStateImpl>
    implements _$$NewRequestStateImplCopyWith<$Res> {
  __$$NewRequestStateImplCopyWithImpl(
      _$NewRequestStateImpl _value, $Res Function(_$NewRequestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? serviceRequestImageBaseUrl = null,
    Object? productImageBaseUrl = null,
    Object? serviceImageBaseUrl = null,
  }) {
    return _then(_$NewRequestStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      serviceRequestImageBaseUrl: null == serviceRequestImageBaseUrl
          ? _value.serviceRequestImageBaseUrl
          : serviceRequestImageBaseUrl // ignore: cast_nullable_to_non_nullable
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

class _$NewRequestStateImpl implements _NewRequestState {
  _$NewRequestStateImpl(
      {required this.status,
      required this.message,
      required this.serviceRequestImageBaseUrl,
      required this.productImageBaseUrl,
      required this.serviceImageBaseUrl});

  @override
  final bool status;
  @override
  final String message;
  @override
  final String serviceRequestImageBaseUrl;
  @override
  final String productImageBaseUrl;
  @override
  final String serviceImageBaseUrl;

  @override
  String toString() {
    return 'NewRequestState(status: $status, message: $message, serviceRequestImageBaseUrl: $serviceRequestImageBaseUrl, productImageBaseUrl: $productImageBaseUrl, serviceImageBaseUrl: $serviceImageBaseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewRequestStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.serviceRequestImageBaseUrl,
                    serviceRequestImageBaseUrl) ||
                other.serviceRequestImageBaseUrl ==
                    serviceRequestImageBaseUrl) &&
            (identical(other.productImageBaseUrl, productImageBaseUrl) ||
                other.productImageBaseUrl == productImageBaseUrl) &&
            (identical(other.serviceImageBaseUrl, serviceImageBaseUrl) ||
                other.serviceImageBaseUrl == serviceImageBaseUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      serviceRequestImageBaseUrl, productImageBaseUrl, serviceImageBaseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewRequestStateImplCopyWith<_$NewRequestStateImpl> get copyWith =>
      __$$NewRequestStateImplCopyWithImpl<_$NewRequestStateImpl>(
          this, _$identity);
}

abstract class _NewRequestState implements NewRequestState {
  factory _NewRequestState(
      {required final bool status,
      required final String message,
      required final String serviceRequestImageBaseUrl,
      required final String productImageBaseUrl,
      required final String serviceImageBaseUrl}) = _$NewRequestStateImpl;

  @override
  bool get status;
  @override
  String get message;
  @override
  String get serviceRequestImageBaseUrl;
  @override
  String get productImageBaseUrl;
  @override
  String get serviceImageBaseUrl;
  @override
  @JsonKey(ignore: true)
  _$$NewRequestStateImplCopyWith<_$NewRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
