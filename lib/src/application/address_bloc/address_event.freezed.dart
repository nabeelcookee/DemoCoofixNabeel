// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetAddressEvent {
  int get limit => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddressEvent value) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAddressEventCopyWith<GetAddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAddressEventCopyWith<$Res> {
  factory $GetAddressEventCopyWith(
          GetAddressEvent value, $Res Function(GetAddressEvent) then) =
      _$GetAddressEventCopyWithImpl<$Res, GetAddressEvent>;
  @useResult
  $Res call({int limit, int skip, String id});
}

/// @nodoc
class _$GetAddressEventCopyWithImpl<$Res, $Val extends GetAddressEvent>
    implements $GetAddressEventCopyWith<$Res> {
  _$GetAddressEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetAddressEventImplCopyWith<$Res>
    implements $GetAddressEventCopyWith<$Res> {
  factory _$$GetAddressEventImplCopyWith(_$GetAddressEventImpl value,
          $Res Function(_$GetAddressEventImpl) then) =
      __$$GetAddressEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int skip, String id});
}

/// @nodoc
class __$$GetAddressEventImplCopyWithImpl<$Res>
    extends _$GetAddressEventCopyWithImpl<$Res, _$GetAddressEventImpl>
    implements _$$GetAddressEventImplCopyWith<$Res> {
  __$$GetAddressEventImplCopyWithImpl(
      _$GetAddressEventImpl _value, $Res Function(_$GetAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? skip = null,
    Object? id = null,
  }) {
    return _then(_$GetAddressEventImpl(
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

class _$GetAddressEventImpl implements _GetAddressEvent {
  const _$GetAddressEventImpl(
      {required this.limit, required this.skip, required this.id});

  @override
  final int limit;
  @override
  final int skip;
  @override
  final String id;

  @override
  String toString() {
    return 'GetAddressEvent.getAddress(limit: $limit, skip: $skip, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressEventImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, skip, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressEventImplCopyWith<_$GetAddressEventImpl> get copyWith =>
      __$$GetAddressEventImplCopyWithImpl<_$GetAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getAddress,
  }) {
    return getAddress(limit, skip, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
  }) {
    return getAddress?.call(limit, skip, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(limit, skip, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddressEvent value) getAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddressEvent implements GetAddressEvent {
  const factory _GetAddressEvent(
      {required final int limit,
      required final int skip,
      required final String id}) = _$GetAddressEventImpl;

  @override
  int get limit;
  @override
  int get skip;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetAddressEventImplCopyWith<_$GetAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddAddressEvent {
  String get id => throw _privateConstructorUsedError;
  String get addressType => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get addres => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  String get directionToReach => throw _privateConstructorUsedError;
  double get locationLatitude => throw _privateConstructorUsedError;
  double get locationLongitude => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String addres,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String addres,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String addres,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddressEvent value) addAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddressEvent value)? addAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddressEvent value)? addAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAddressEventCopyWith<AddAddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressEventCopyWith<$Res> {
  factory $AddAddressEventCopyWith(
          AddAddressEvent value, $Res Function(AddAddressEvent) then) =
      _$AddAddressEventCopyWithImpl<$Res, AddAddressEvent>;
  @useResult
  $Res call(
      {String id,
      String addressType,
      String fullName,
      String addres,
      String pinCode,
      String directionToReach,
      double locationLatitude,
      double locationLongitude});
}

/// @nodoc
class _$AddAddressEventCopyWithImpl<$Res, $Val extends AddAddressEvent>
    implements $AddAddressEventCopyWith<$Res> {
  _$AddAddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addressType = null,
    Object? fullName = null,
    Object? addres = null,
    Object? pinCode = null,
    Object? directionToReach = null,
    Object? locationLatitude = null,
    Object? locationLongitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      addres: null == addres
          ? _value.addres
          : addres // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      directionToReach: null == directionToReach
          ? _value.directionToReach
          : directionToReach // ignore: cast_nullable_to_non_nullable
              as String,
      locationLatitude: null == locationLatitude
          ? _value.locationLatitude
          : locationLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      locationLongitude: null == locationLongitude
          ? _value.locationLongitude
          : locationLongitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAddressEventImplCopyWith<$Res>
    implements $AddAddressEventCopyWith<$Res> {
  factory _$$AddAddressEventImplCopyWith(_$AddAddressEventImpl value,
          $Res Function(_$AddAddressEventImpl) then) =
      __$$AddAddressEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String addressType,
      String fullName,
      String addres,
      String pinCode,
      String directionToReach,
      double locationLatitude,
      double locationLongitude});
}

/// @nodoc
class __$$AddAddressEventImplCopyWithImpl<$Res>
    extends _$AddAddressEventCopyWithImpl<$Res, _$AddAddressEventImpl>
    implements _$$AddAddressEventImplCopyWith<$Res> {
  __$$AddAddressEventImplCopyWithImpl(
      _$AddAddressEventImpl _value, $Res Function(_$AddAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addressType = null,
    Object? fullName = null,
    Object? addres = null,
    Object? pinCode = null,
    Object? directionToReach = null,
    Object? locationLatitude = null,
    Object? locationLongitude = null,
  }) {
    return _then(_$AddAddressEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      addres: null == addres
          ? _value.addres
          : addres // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      directionToReach: null == directionToReach
          ? _value.directionToReach
          : directionToReach // ignore: cast_nullable_to_non_nullable
              as String,
      locationLatitude: null == locationLatitude
          ? _value.locationLatitude
          : locationLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      locationLongitude: null == locationLongitude
          ? _value.locationLongitude
          : locationLongitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddAddressEventImpl implements _AddAddressEvent {
  const _$AddAddressEventImpl(
      {required this.id,
      required this.addressType,
      required this.fullName,
      required this.addres,
      required this.pinCode,
      required this.directionToReach,
      required this.locationLatitude,
      required this.locationLongitude});

  @override
  final String id;
  @override
  final String addressType;
  @override
  final String fullName;
  @override
  final String addres;
  @override
  final String pinCode;
  @override
  final String directionToReach;
  @override
  final double locationLatitude;
  @override
  final double locationLongitude;

  @override
  String toString() {
    return 'AddAddressEvent.addAddress(id: $id, addressType: $addressType, fullName: $fullName, addres: $addres, pinCode: $pinCode, directionToReach: $directionToReach, locationLatitude: $locationLatitude, locationLongitude: $locationLongitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.addres, addres) || other.addres == addres) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.directionToReach, directionToReach) ||
                other.directionToReach == directionToReach) &&
            (identical(other.locationLatitude, locationLatitude) ||
                other.locationLatitude == locationLatitude) &&
            (identical(other.locationLongitude, locationLongitude) ||
                other.locationLongitude == locationLongitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, addressType, fullName,
      addres, pinCode, directionToReach, locationLatitude, locationLongitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressEventImplCopyWith<_$AddAddressEventImpl> get copyWith =>
      __$$AddAddressEventImplCopyWithImpl<_$AddAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String addres,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
  }) {
    return addAddress(id, addressType, fullName, addres, pinCode,
        directionToReach, locationLatitude, locationLongitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String addres,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
  }) {
    return addAddress?.call(id, addressType, fullName, addres, pinCode,
        directionToReach, locationLatitude, locationLongitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String addres,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(id, addressType, fullName, addres, pinCode,
          directionToReach, locationLatitude, locationLongitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddressEvent value) addAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddressEvent value)? addAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddressEvent value)? addAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddressEvent implements AddAddressEvent {
  const factory _AddAddressEvent(
      {required final String id,
      required final String addressType,
      required final String fullName,
      required final String addres,
      required final String pinCode,
      required final String directionToReach,
      required final double locationLatitude,
      required final double locationLongitude}) = _$AddAddressEventImpl;

  @override
  String get id;
  @override
  String get addressType;
  @override
  String get fullName;
  @override
  String get addres;
  @override
  String get pinCode;
  @override
  String get directionToReach;
  @override
  double get locationLatitude;
  @override
  double get locationLongitude;
  @override
  @JsonKey(ignore: true)
  _$$AddAddressEventImplCopyWith<_$AddAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
