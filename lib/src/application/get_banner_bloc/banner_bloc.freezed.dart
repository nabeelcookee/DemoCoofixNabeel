// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBannerEvent value) getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBannerEvent value)? getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBannerEvent value)? getBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res, BannerEvent>;
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res, $Val extends BannerEvent>
    implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getBannerEventImplCopyWith<$Res> {
  factory _$$getBannerEventImplCopyWith(_$getBannerEventImpl value,
          $Res Function(_$getBannerEventImpl) then) =
      __$$getBannerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getBannerEventImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$getBannerEventImpl>
    implements _$$getBannerEventImplCopyWith<$Res> {
  __$$getBannerEventImplCopyWithImpl(
      _$getBannerEventImpl _value, $Res Function(_$getBannerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getBannerEventImpl
    with DiagnosticableTreeMixin
    implements _getBannerEvent {
  const _$getBannerEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BannerEvent.getBanner()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BannerEvent.getBanner'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getBannerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanner,
  }) {
    return getBanner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanner,
  }) {
    return getBanner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBannerEvent value) getBanner,
  }) {
    return getBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBannerEvent value)? getBanner,
  }) {
    return getBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBannerEvent value)? getBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner(this);
    }
    return orElse();
  }
}

abstract class _getBannerEvent implements BannerEvent {
  const factory _getBannerEvent() = _$getBannerEventImpl;
}

/// @nodoc
mixin _$BannerState {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<BannerModel> get bannerList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerStateCopyWith<BannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
  @useResult
  $Res call({bool status, String message, List<BannerModel> bannerList});
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? bannerList = null,
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
      bannerList: null == bannerList
          ? _value.bannerList
          : bannerList // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerStateImplCopyWith<$Res>
    implements $BannerStateCopyWith<$Res> {
  factory _$$BannerStateImplCopyWith(
          _$BannerStateImpl value, $Res Function(_$BannerStateImpl) then) =
      __$$BannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message, List<BannerModel> bannerList});
}

/// @nodoc
class __$$BannerStateImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$BannerStateImpl>
    implements _$$BannerStateImplCopyWith<$Res> {
  __$$BannerStateImplCopyWithImpl(
      _$BannerStateImpl _value, $Res Function(_$BannerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? bannerList = null,
  }) {
    return _then(_$BannerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      bannerList: null == bannerList
          ? _value._bannerList
          : bannerList // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ));
  }
}

/// @nodoc

class _$BannerStateImpl with DiagnosticableTreeMixin implements _BannerState {
  _$BannerStateImpl(
      {required this.status,
      required this.message,
      required final List<BannerModel> bannerList})
      : _bannerList = bannerList;

  @override
  final bool status;
  @override
  final String message;
  final List<BannerModel> _bannerList;
  @override
  List<BannerModel> get bannerList {
    if (_bannerList is EqualUnmodifiableListView) return _bannerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannerList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BannerState(status: $status, message: $message, bannerList: $bannerList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BannerState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('bannerList', bannerList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._bannerList, _bannerList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_bannerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerStateImplCopyWith<_$BannerStateImpl> get copyWith =>
      __$$BannerStateImplCopyWithImpl<_$BannerStateImpl>(this, _$identity);
}

abstract class _BannerState implements BannerState {
  factory _BannerState(
      {required final bool status,
      required final String message,
      required final List<BannerModel> bannerList}) = _$BannerStateImpl;

  @override
  bool get status;
  @override
  String get message;
  @override
  List<BannerModel> get bannerList;
  @override
  @JsonKey(ignore: true)
  _$$BannerStateImplCopyWith<_$BannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
