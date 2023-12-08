// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getAddress,
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
    required TResult Function(String id) selectedAddress,
    required TResult Function(String id) deletedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult? Function(String id)? selectedAddress,
    TResult? Function(String id)? deletedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult Function(String id)? selectedAddress,
    TResult Function(String id)? deletedAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddressEvent value) getAddress,
    required TResult Function(_AddAddressEvent value) addAddress,
    required TResult Function(_SelectedAddressEvent value) selectedAddress,
    required TResult Function(_DeletedAddressEvent value) deletedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
    TResult? Function(_AddAddressEvent value)? addAddress,
    TResult? Function(_SelectedAddressEvent value)? selectedAddress,
    TResult? Function(_DeletedAddressEvent value)? deletedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    TResult Function(_AddAddressEvent value)? addAddress,
    TResult Function(_SelectedAddressEvent value)? selectedAddress,
    TResult Function(_DeletedAddressEvent value)? deletedAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressEventCopyWith<AddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAddressEventImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$GetAddressEventImplCopyWith(_$GetAddressEventImpl value,
          $Res Function(_$GetAddressEventImpl) then) =
      __$$GetAddressEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int skip, String id});
}

/// @nodoc
class __$$GetAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$GetAddressEventImpl>
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

class _$GetAddressEventImpl
    with DiagnosticableTreeMixin
    implements _GetAddressEvent {
  const _$GetAddressEventImpl(
      {required this.limit, required this.skip, required this.id});

  @override
  final int limit;
  @override
  final int skip;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.getAddress(limit: $limit, skip: $skip, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.getAddress'))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('skip', skip))
      ..add(DiagnosticsProperty('id', id));
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
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
    required TResult Function(String id) selectedAddress,
    required TResult Function(String id) deletedAddress,
  }) {
    return getAddress(limit, skip, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult? Function(String id)? selectedAddress,
    TResult? Function(String id)? deletedAddress,
  }) {
    return getAddress?.call(limit, skip, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult Function(String id)? selectedAddress,
    TResult Function(String id)? deletedAddress,
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
    required TResult Function(_AddAddressEvent value) addAddress,
    required TResult Function(_SelectedAddressEvent value) selectedAddress,
    required TResult Function(_DeletedAddressEvent value) deletedAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
    TResult? Function(_AddAddressEvent value)? addAddress,
    TResult? Function(_SelectedAddressEvent value)? selectedAddress,
    TResult? Function(_DeletedAddressEvent value)? deletedAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    TResult Function(_AddAddressEvent value)? addAddress,
    TResult Function(_SelectedAddressEvent value)? selectedAddress,
    TResult Function(_DeletedAddressEvent value)? deletedAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddressEvent implements AddressEvent {
  const factory _GetAddressEvent(
      {required final int limit,
      required final int skip,
      required final String id}) = _$GetAddressEventImpl;

  int get limit;
  int get skip;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetAddressEventImplCopyWith<_$GetAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAddressEventImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$AddAddressEventImplCopyWith(_$AddAddressEventImpl value,
          $Res Function(_$AddAddressEventImpl) then) =
      __$$AddAddressEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String addressType,
      String fullName,
      String address,
      String pinCode,
      String directionToReach,
      double locationLatitude,
      double locationLongitude});
}

/// @nodoc
class __$$AddAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddAddressEventImpl>
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
    Object? address = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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

class _$AddAddressEventImpl
    with DiagnosticableTreeMixin
    implements _AddAddressEvent {
  const _$AddAddressEventImpl(
      {required this.id,
      required this.addressType,
      required this.fullName,
      required this.address,
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
  final String address;
  @override
  final String pinCode;
  @override
  final String directionToReach;
  @override
  final double locationLatitude;
  @override
  final double locationLongitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.addAddress(id: $id, addressType: $addressType, fullName: $fullName, address: $address, pinCode: $pinCode, directionToReach: $directionToReach, locationLatitude: $locationLatitude, locationLongitude: $locationLongitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.addAddress'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('addressType', addressType))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('pinCode', pinCode))
      ..add(DiagnosticsProperty('directionToReach', directionToReach))
      ..add(DiagnosticsProperty('locationLatitude', locationLatitude))
      ..add(DiagnosticsProperty('locationLongitude', locationLongitude));
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
            (identical(other.address, address) || other.address == address) &&
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
      address, pinCode, directionToReach, locationLatitude, locationLongitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressEventImplCopyWith<_$AddAddressEventImpl> get copyWith =>
      __$$AddAddressEventImplCopyWithImpl<_$AddAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getAddress,
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
    required TResult Function(String id) selectedAddress,
    required TResult Function(String id) deletedAddress,
  }) {
    return addAddress(id, addressType, fullName, address, pinCode,
        directionToReach, locationLatitude, locationLongitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult? Function(String id)? selectedAddress,
    TResult? Function(String id)? deletedAddress,
  }) {
    return addAddress?.call(id, addressType, fullName, address, pinCode,
        directionToReach, locationLatitude, locationLongitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult Function(String id)? selectedAddress,
    TResult Function(String id)? deletedAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(id, addressType, fullName, address, pinCode,
          directionToReach, locationLatitude, locationLongitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddressEvent value) getAddress,
    required TResult Function(_AddAddressEvent value) addAddress,
    required TResult Function(_SelectedAddressEvent value) selectedAddress,
    required TResult Function(_DeletedAddressEvent value) deletedAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
    TResult? Function(_AddAddressEvent value)? addAddress,
    TResult? Function(_SelectedAddressEvent value)? selectedAddress,
    TResult? Function(_DeletedAddressEvent value)? deletedAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    TResult Function(_AddAddressEvent value)? addAddress,
    TResult Function(_SelectedAddressEvent value)? selectedAddress,
    TResult Function(_DeletedAddressEvent value)? deletedAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddressEvent implements AddressEvent {
  const factory _AddAddressEvent(
      {required final String id,
      required final String addressType,
      required final String fullName,
      required final String address,
      required final String pinCode,
      required final String directionToReach,
      required final double locationLatitude,
      required final double locationLongitude}) = _$AddAddressEventImpl;

  @override
  String get id;
  String get addressType;
  String get fullName;
  String get address;
  String get pinCode;
  String get directionToReach;
  double get locationLatitude;
  double get locationLongitude;
  @override
  @JsonKey(ignore: true)
  _$$AddAddressEventImplCopyWith<_$AddAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedAddressEventImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$SelectedAddressEventImplCopyWith(_$SelectedAddressEventImpl value,
          $Res Function(_$SelectedAddressEventImpl) then) =
      __$$SelectedAddressEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SelectedAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SelectedAddressEventImpl>
    implements _$$SelectedAddressEventImplCopyWith<$Res> {
  __$$SelectedAddressEventImplCopyWithImpl(_$SelectedAddressEventImpl _value,
      $Res Function(_$SelectedAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectedAddressEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedAddressEventImpl
    with DiagnosticableTreeMixin
    implements _SelectedAddressEvent {
  const _$SelectedAddressEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.selectedAddress(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.selectedAddress'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedAddressEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedAddressEventImplCopyWith<_$SelectedAddressEventImpl>
      get copyWith =>
          __$$SelectedAddressEventImplCopyWithImpl<_$SelectedAddressEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getAddress,
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
    required TResult Function(String id) selectedAddress,
    required TResult Function(String id) deletedAddress,
  }) {
    return selectedAddress(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult? Function(String id)? selectedAddress,
    TResult? Function(String id)? deletedAddress,
  }) {
    return selectedAddress?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult Function(String id)? selectedAddress,
    TResult Function(String id)? deletedAddress,
    required TResult orElse(),
  }) {
    if (selectedAddress != null) {
      return selectedAddress(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddressEvent value) getAddress,
    required TResult Function(_AddAddressEvent value) addAddress,
    required TResult Function(_SelectedAddressEvent value) selectedAddress,
    required TResult Function(_DeletedAddressEvent value) deletedAddress,
  }) {
    return selectedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
    TResult? Function(_AddAddressEvent value)? addAddress,
    TResult? Function(_SelectedAddressEvent value)? selectedAddress,
    TResult? Function(_DeletedAddressEvent value)? deletedAddress,
  }) {
    return selectedAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    TResult Function(_AddAddressEvent value)? addAddress,
    TResult Function(_SelectedAddressEvent value)? selectedAddress,
    TResult Function(_DeletedAddressEvent value)? deletedAddress,
    required TResult orElse(),
  }) {
    if (selectedAddress != null) {
      return selectedAddress(this);
    }
    return orElse();
  }
}

abstract class _SelectedAddressEvent implements AddressEvent {
  const factory _SelectedAddressEvent({required final String id}) =
      _$SelectedAddressEventImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SelectedAddressEventImplCopyWith<_$SelectedAddressEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedAddressEventImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$DeletedAddressEventImplCopyWith(_$DeletedAddressEventImpl value,
          $Res Function(_$DeletedAddressEventImpl) then) =
      __$$DeletedAddressEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeletedAddressEventImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$DeletedAddressEventImpl>
    implements _$$DeletedAddressEventImplCopyWith<$Res> {
  __$$DeletedAddressEventImplCopyWithImpl(_$DeletedAddressEventImpl _value,
      $Res Function(_$DeletedAddressEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeletedAddressEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletedAddressEventImpl
    with DiagnosticableTreeMixin
    implements _DeletedAddressEvent {
  const _$DeletedAddressEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressEvent.deletedAddress(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressEvent.deletedAddress'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedAddressEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedAddressEventImplCopyWith<_$DeletedAddressEventImpl> get copyWith =>
      __$$DeletedAddressEventImplCopyWithImpl<_$DeletedAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, int skip, String id) getAddress,
    required TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)
        addAddress,
    required TResult Function(String id) selectedAddress,
    required TResult Function(String id) deletedAddress,
  }) {
    return deletedAddress(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit, int skip, String id)? getAddress,
    TResult? Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult? Function(String id)? selectedAddress,
    TResult? Function(String id)? deletedAddress,
  }) {
    return deletedAddress?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, int skip, String id)? getAddress,
    TResult Function(
            String id,
            String addressType,
            String fullName,
            String address,
            String pinCode,
            String directionToReach,
            double locationLatitude,
            double locationLongitude)?
        addAddress,
    TResult Function(String id)? selectedAddress,
    TResult Function(String id)? deletedAddress,
    required TResult orElse(),
  }) {
    if (deletedAddress != null) {
      return deletedAddress(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAddressEvent value) getAddress,
    required TResult Function(_AddAddressEvent value) addAddress,
    required TResult Function(_SelectedAddressEvent value) selectedAddress,
    required TResult Function(_DeletedAddressEvent value) deletedAddress,
  }) {
    return deletedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAddressEvent value)? getAddress,
    TResult? Function(_AddAddressEvent value)? addAddress,
    TResult? Function(_SelectedAddressEvent value)? selectedAddress,
    TResult? Function(_DeletedAddressEvent value)? deletedAddress,
  }) {
    return deletedAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAddressEvent value)? getAddress,
    TResult Function(_AddAddressEvent value)? addAddress,
    TResult Function(_SelectedAddressEvent value)? selectedAddress,
    TResult Function(_DeletedAddressEvent value)? deletedAddress,
    required TResult orElse(),
  }) {
    if (deletedAddress != null) {
      return deletedAddress(this);
    }
    return orElse();
  }
}

abstract class _DeletedAddressEvent implements AddressEvent {
  const factory _DeletedAddressEvent({required final String id}) =
      _$DeletedAddressEventImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DeletedAddressEventImplCopyWith<_$DeletedAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
