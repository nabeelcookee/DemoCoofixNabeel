// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String otp, String userId) verifyOtp,
    required TResult Function() checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String otp, String userId)? verifyOtp,
    TResult? Function()? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String otp, String userId)? verifyOtp,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_CheckAuth value) checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SendOtpImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String otp, String userId) verifyOtp,
    required TResult Function() checkAuth,
  }) {
    return sendOtp(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String otp, String userId)? verifyOtp,
    TResult? Function()? checkAuth,
  }) {
    return sendOtp?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String otp, String userId)? verifyOtp,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_CheckAuth value) checkAuth,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements AuthEvent {
  const factory _SendOtp({required final String phoneNumber}) = _$SendOtpImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, String userId});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? userId = null,
  }) {
    return _then(_$VerifyOtpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl({required this.otp, required this.userId});

  @override
  final String otp;
  @override
  final String userId;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otp: $otp, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String otp, String userId) verifyOtp,
    required TResult Function() checkAuth,
  }) {
    return verifyOtp(otp, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String otp, String userId)? verifyOtp,
    TResult? Function()? checkAuth,
  }) {
    return verifyOtp?.call(otp, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String otp, String userId)? verifyOtp,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_CheckAuth value) checkAuth,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp(
      {required final String otp,
      required final String userId}) = _$VerifyOtpImpl;

  String get otp;
  String get userId;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthImpl implements _CheckAuth {
  const _$CheckAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String otp, String userId) verifyOtp,
    required TResult Function() checkAuth,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String otp, String userId)? verifyOtp,
    TResult? Function()? checkAuth,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String otp, String userId)? verifyOtp,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_CheckAuth value) checkAuth,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get status => throw _privateConstructorUsedError;
  bool get isCheckAuth => throw _privateConstructorUsedError;
  bool get isSendingOtp => throw _privateConstructorUsedError;
  bool get isVrifyingOtp => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool status,
      bool isCheckAuth,
      bool isSendingOtp,
      bool isVrifyingOtp,
      String errorMessage,
      String userId,
      AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isCheckAuth = null,
    Object? isSendingOtp = null,
    Object? isVrifyingOtp = null,
    Object? errorMessage = null,
    Object? userId = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isCheckAuth: null == isCheckAuth
          ? _value.isCheckAuth
          : isCheckAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingOtp: null == isSendingOtp
          ? _value.isSendingOtp
          : isSendingOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      isVrifyingOtp: null == isVrifyingOtp
          ? _value.isVrifyingOtp
          : isVrifyingOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      bool isCheckAuth,
      bool isSendingOtp,
      bool isVrifyingOtp,
      String errorMessage,
      String userId,
      AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isCheckAuth = null,
    Object? isSendingOtp = null,
    Object? isVrifyingOtp = null,
    Object? errorMessage = null,
    Object? userId = null,
    Object? user = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isCheckAuth: null == isCheckAuth
          ? _value.isCheckAuth
          : isCheckAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingOtp: null == isSendingOtp
          ? _value.isSendingOtp
          : isSendingOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      isVrifyingOtp: null == isVrifyingOtp
          ? _value.isVrifyingOtp
          : isVrifyingOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl(
      {required this.status,
      required this.isCheckAuth,
      required this.isSendingOtp,
      required this.isVrifyingOtp,
      required this.errorMessage,
      required this.userId,
      this.user});

  @override
  final bool status;
  @override
  final bool isCheckAuth;
  @override
  final bool isSendingOtp;
  @override
  final bool isVrifyingOtp;
  @override
  final String errorMessage;
  @override
  final String userId;
  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AuthState(status: $status, isCheckAuth: $isCheckAuth, isSendingOtp: $isSendingOtp, isVrifyingOtp: $isVrifyingOtp, errorMessage: $errorMessage, userId: $userId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCheckAuth, isCheckAuth) ||
                other.isCheckAuth == isCheckAuth) &&
            (identical(other.isSendingOtp, isSendingOtp) ||
                other.isSendingOtp == isSendingOtp) &&
            (identical(other.isVrifyingOtp, isVrifyingOtp) ||
                other.isVrifyingOtp == isVrifyingOtp) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isCheckAuth,
      isSendingOtp, isVrifyingOtp, errorMessage, userId, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final bool status,
      required final bool isCheckAuth,
      required final bool isSendingOtp,
      required final bool isVrifyingOtp,
      required final String errorMessage,
      required final String userId,
      final AppUser? user}) = _$AuthStateImpl;

  @override
  bool get status;
  @override
  bool get isCheckAuth;
  @override
  bool get isSendingOtp;
  @override
  bool get isVrifyingOtp;
  @override
  String get errorMessage;
  @override
  String get userId;
  @override
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
