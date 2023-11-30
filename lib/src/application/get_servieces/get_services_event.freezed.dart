// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_services_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetServicesEvent {
  int get limit => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServicesEvent value) getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServicesEvent value)? getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServicesEvent value)? getServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetServicesEventCopyWith<GetServicesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetServicesEventCopyWith<$Res> {
  factory $GetServicesEventCopyWith(
          GetServicesEvent value, $Res Function(GetServicesEvent) then) =
      _$GetServicesEventCopyWithImpl<$Res, GetServicesEvent>;
  @useResult
  $Res call({int limit, int skip, String id});
}

/// @nodoc
class _$GetServicesEventCopyWithImpl<$Res, $Val extends GetServicesEvent>
    implements $GetServicesEventCopyWith<$Res> {
  _$GetServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetServicesEventImplCopyWith<$Res>
    implements $GetServicesEventCopyWith<$Res> {
  factory _$$GetServicesEventImplCopyWith(_$GetServicesEventImpl value,
          $Res Function(_$GetServicesEventImpl) then) =
      __$$GetServicesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int skip, String id});
}

/// @nodoc
class __$$GetServicesEventImplCopyWithImpl<$Res>
    extends _$GetServicesEventCopyWithImpl<$Res, _$GetServicesEventImpl>
    implements _$$GetServicesEventImplCopyWith<$Res> {
  __$$GetServicesEventImplCopyWithImpl(_$GetServicesEventImpl _value,
      $Res Function(_$GetServicesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? id = null,
  }) {
    return _then(_$GetServicesEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetServicesEventImpl implements _GetServicesEvent {
  const _$GetServicesEventImpl(
      {required this.limit, required this.skip, required this.id});

  @override
  final int limit;
  @override
  final int skip;
  @override
  final String id;

  @override
  String toString() {
    return 'GetServicesEvent.getServices(limit: $limit, skip: $skip, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServicesEventImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServicesEventImplCopyWith<_$GetServicesEventImpl> get copyWith =>
      __$$GetServicesEventImplCopyWithImpl<_$GetServicesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getServices,
  }) {
    return getServices(limit, skip, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getServices,
  }) {
    return getServices?.call(limit, skip, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(limit, skip, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServicesEvent value) getServices,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServicesEvent value)? getServices,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServicesEvent value)? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetServicesEvent implements GetServicesEvent {
  const factory _GetServicesEvent(
      {required final int limit,
      required final int skip,
      required final String id}) = _$GetServicesEventImpl;

  @override
  int get limit;
  @override
  int get skip;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetServicesEventImplCopyWith<_$GetServicesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
