// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_services_bloc.dart';

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

/// @nodoc
mixin _$SelecterServiceId {
  String get selecterServiceId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selecterServiceId) selecterServiceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selecterServiceId)? selecterServiceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selecterServiceId)? selecterServiceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelecterServiceId value) selecterServiceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelecterServiceId value)? selecterServiceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelecterServiceId value)? selecterServiceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelecterServiceIdCopyWith<SelecterServiceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelecterServiceIdCopyWith<$Res> {
  factory $SelecterServiceIdCopyWith(
          SelecterServiceId value, $Res Function(SelecterServiceId) then) =
      _$SelecterServiceIdCopyWithImpl<$Res, SelecterServiceId>;
  @useResult
  $Res call({String selecterServiceId});
}

/// @nodoc
class _$SelecterServiceIdCopyWithImpl<$Res, $Val extends SelecterServiceId>
    implements $SelecterServiceIdCopyWith<$Res> {
  _$SelecterServiceIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selecterServiceId = null,
  }) {
    return _then(_value.copyWith(
      selecterServiceId: null == selecterServiceId
          ? _value.selecterServiceId
          : selecterServiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelecterServiceIdImplCopyWith<$Res>
    implements $SelecterServiceIdCopyWith<$Res> {
  factory _$$SelecterServiceIdImplCopyWith(_$SelecterServiceIdImpl value,
          $Res Function(_$SelecterServiceIdImpl) then) =
      __$$SelecterServiceIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selecterServiceId});
}

/// @nodoc
class __$$SelecterServiceIdImplCopyWithImpl<$Res>
    extends _$SelecterServiceIdCopyWithImpl<$Res, _$SelecterServiceIdImpl>
    implements _$$SelecterServiceIdImplCopyWith<$Res> {
  __$$SelecterServiceIdImplCopyWithImpl(_$SelecterServiceIdImpl _value,
      $Res Function(_$SelecterServiceIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selecterServiceId = null,
  }) {
    return _then(_$SelecterServiceIdImpl(
      selecterServiceId: null == selecterServiceId
          ? _value.selecterServiceId
          : selecterServiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelecterServiceIdImpl implements _SelecterServiceId {
  const _$SelecterServiceIdImpl({required this.selecterServiceId});

  @override
  final String selecterServiceId;

  @override
  String toString() {
    return 'SelecterServiceId.selecterServiceId(selecterServiceId: $selecterServiceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelecterServiceIdImpl &&
            (identical(other.selecterServiceId, selecterServiceId) ||
                other.selecterServiceId == selecterServiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selecterServiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelecterServiceIdImplCopyWith<_$SelecterServiceIdImpl> get copyWith =>
      __$$SelecterServiceIdImplCopyWithImpl<_$SelecterServiceIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selecterServiceId) selecterServiceId,
  }) {
    return selecterServiceId(this.selecterServiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selecterServiceId)? selecterServiceId,
  }) {
    return selecterServiceId?.call(this.selecterServiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selecterServiceId)? selecterServiceId,
    required TResult orElse(),
  }) {
    if (selecterServiceId != null) {
      return selecterServiceId(this.selecterServiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelecterServiceId value) selecterServiceId,
  }) {
    return selecterServiceId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelecterServiceId value)? selecterServiceId,
  }) {
    return selecterServiceId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelecterServiceId value)? selecterServiceId,
    required TResult orElse(),
  }) {
    if (selecterServiceId != null) {
      return selecterServiceId(this);
    }
    return orElse();
  }
}

abstract class _SelecterServiceId implements SelecterServiceId {
  const factory _SelecterServiceId({required final String selecterServiceId}) =
      _$SelecterServiceIdImpl;

  @override
  String get selecterServiceId;
  @override
  @JsonKey(ignore: true)
  _$$SelecterServiceIdImplCopyWith<_$SelecterServiceIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceState {
  Status get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<GetServiecesModel> get services => throw _privateConstructorUsedError;
  String get selecterServiceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceStateCopyWith<ServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<$Res> {
  factory $ServiceStateCopyWith(
          ServiceState value, $Res Function(ServiceState) then) =
      _$ServiceStateCopyWithImpl<$Res, ServiceState>;
  @useResult
  $Res call(
      {Status isLoading,
      String errorMessage,
      List<GetServiecesModel> services,
      String selecterServiceId});

  $StatusCopyWith<$Res> get isLoading;
}

/// @nodoc
class _$ServiceStateCopyWithImpl<$Res, $Val extends ServiceState>
    implements $ServiceStateCopyWith<$Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? services = null,
    Object? selecterServiceId = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<GetServiecesModel>,
      selecterServiceId: null == selecterServiceId
          ? _value.selecterServiceId
          : selecterServiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get isLoading {
    return $StatusCopyWith<$Res>(_value.isLoading, (value) {
      return _then(_value.copyWith(isLoading: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceStateImplCopyWith<$Res>
    implements $ServiceStateCopyWith<$Res> {
  factory _$$ServiceStateImplCopyWith(
          _$ServiceStateImpl value, $Res Function(_$ServiceStateImpl) then) =
      __$$ServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status isLoading,
      String errorMessage,
      List<GetServiecesModel> services,
      String selecterServiceId});

  @override
  $StatusCopyWith<$Res> get isLoading;
}

/// @nodoc
class __$$ServiceStateImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$ServiceStateImpl>
    implements _$$ServiceStateImplCopyWith<$Res> {
  __$$ServiceStateImplCopyWithImpl(
      _$ServiceStateImpl _value, $Res Function(_$ServiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? services = null,
    Object? selecterServiceId = null,
  }) {
    return _then(_$ServiceStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<GetServiecesModel>,
      selecterServiceId: null == selecterServiceId
          ? _value.selecterServiceId
          : selecterServiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceStateImpl implements _ServiceState {
  _$ServiceStateImpl(
      {required this.isLoading,
      required this.errorMessage,
      required final List<GetServiecesModel> services,
      required this.selecterServiceId})
      : _services = services;

  @override
  final Status isLoading;
  @override
  final String errorMessage;
  final List<GetServiecesModel> _services;
  @override
  List<GetServiecesModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final String selecterServiceId;

  @override
  String toString() {
    return 'ServiceState(isLoading: $isLoading, errorMessage: $errorMessage, services: $services, selecterServiceId: $selecterServiceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.selecterServiceId, selecterServiceId) ||
                other.selecterServiceId == selecterServiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      const DeepCollectionEquality().hash(_services), selecterServiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceStateImplCopyWith<_$ServiceStateImpl> get copyWith =>
      __$$ServiceStateImplCopyWithImpl<_$ServiceStateImpl>(this, _$identity);
}

abstract class _ServiceState implements ServiceState {
  factory _ServiceState(
      {required final Status isLoading,
      required final String errorMessage,
      required final List<GetServiecesModel> services,
      required final String selecterServiceId}) = _$ServiceStateImpl;

  @override
  Status get isLoading;
  @override
  String get errorMessage;
  @override
  List<GetServiecesModel> get services;
  @override
  String get selecterServiceId;
  @override
  @JsonKey(ignore: true)
  _$$ServiceStateImplCopyWith<_$ServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
