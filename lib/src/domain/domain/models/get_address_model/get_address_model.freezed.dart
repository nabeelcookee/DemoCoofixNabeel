// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'row_id')
  int get rowId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer')
  String get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressType')
  String get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'pinCode')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'directionToReach')
  String get directionToReach => throw _privateConstructorUsedError;
  LocationCoordinates get locationCoordinates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'selected')
  bool get selected => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'row_id') int rowId,
      @JsonKey(name: 'customer') String customer,
      @JsonKey(name: 'addressType') String addressType,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'pinCode') String pinCode,
      @JsonKey(name: 'directionToReach') String directionToReach,
      LocationCoordinates locationCoordinates,
      @JsonKey(name: 'selected') bool selected,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  $LocationCoordinatesCopyWith<$Res> get locationCoordinates;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowId = null,
    Object? customer = null,
    Object? addressType = null,
    Object? fullName = null,
    Object? address = null,
    Object? pinCode = null,
    Object? directionToReach = null,
    Object? locationCoordinates = null,
    Object? selected = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rowId: null == rowId
          ? _value.rowId
          : rowId // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
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
      locationCoordinates: null == locationCoordinates
          ? _value.locationCoordinates
          : locationCoordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCoordinatesCopyWith<$Res> get locationCoordinates {
    return $LocationCoordinatesCopyWith<$Res>(_value.locationCoordinates,
        (value) {
      return _then(_value.copyWith(locationCoordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'row_id') int rowId,
      @JsonKey(name: 'customer') String customer,
      @JsonKey(name: 'addressType') String addressType,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'pinCode') String pinCode,
      @JsonKey(name: 'directionToReach') String directionToReach,
      LocationCoordinates locationCoordinates,
      @JsonKey(name: 'selected') bool selected,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  @override
  $LocationCoordinatesCopyWith<$Res> get locationCoordinates;
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rowId = null,
    Object? customer = null,
    Object? addressType = null,
    Object? fullName = null,
    Object? address = null,
    Object? pinCode = null,
    Object? directionToReach = null,
    Object? locationCoordinates = null,
    Object? selected = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AddressModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rowId: null == rowId
          ? _value.rowId
          : rowId // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
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
      locationCoordinates: null == locationCoordinates
          ? _value.locationCoordinates
          : locationCoordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  _$AddressModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'row_id') required this.rowId,
      @JsonKey(name: 'customer') required this.customer,
      @JsonKey(name: 'addressType') required this.addressType,
      @JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'pinCode') required this.pinCode,
      @JsonKey(name: 'directionToReach') required this.directionToReach,
      required this.locationCoordinates,
      @JsonKey(name: 'selected') required this.selected,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'row_id')
  final int rowId;
  @override
  @JsonKey(name: 'customer')
  final String customer;
  @override
  @JsonKey(name: 'addressType')
  final String addressType;
  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'pinCode')
  final String pinCode;
  @override
  @JsonKey(name: 'directionToReach')
  final String directionToReach;
  @override
  final LocationCoordinates locationCoordinates;
  @override
  @JsonKey(name: 'selected')
  final bool selected;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'AddressModel(id: $id, rowId: $rowId, customer: $customer, addressType: $addressType, fullName: $fullName, address: $address, pinCode: $pinCode, directionToReach: $directionToReach, locationCoordinates: $locationCoordinates, selected: $selected, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rowId, rowId) || other.rowId == rowId) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.directionToReach, directionToReach) ||
                other.directionToReach == directionToReach) &&
            (identical(other.locationCoordinates, locationCoordinates) ||
                other.locationCoordinates == locationCoordinates) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rowId,
      customer,
      addressType,
      fullName,
      address,
      pinCode,
      directionToReach,
      locationCoordinates,
      selected,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  factory _AddressModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'row_id') required final int rowId,
      @JsonKey(name: 'customer') required final String customer,
      @JsonKey(name: 'addressType') required final String addressType,
      @JsonKey(name: 'fullName') required final String fullName,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'pinCode') required final String pinCode,
      @JsonKey(name: 'directionToReach') required final String directionToReach,
      required final LocationCoordinates locationCoordinates,
      @JsonKey(name: 'selected') required final bool selected,
      @JsonKey(name: 'createdAt') required final String createdAt,
      @JsonKey(name: 'updatedAt')
      required final String updatedAt}) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'row_id')
  int get rowId;
  @override
  @JsonKey(name: 'customer')
  String get customer;
  @override
  @JsonKey(name: 'addressType')
  String get addressType;
  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'pinCode')
  String get pinCode;
  @override
  @JsonKey(name: 'directionToReach')
  String get directionToReach;
  @override
  LocationCoordinates get locationCoordinates;
  @override
  @JsonKey(name: 'selected')
  bool get selected;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationCoordinates _$LocationCoordinatesFromJson(Map<String, dynamic> json) {
  return _LocationCoordinates.fromJson(json);
}

/// @nodoc
mixin _$LocationCoordinates {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCoordinatesCopyWith<LocationCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCoordinatesCopyWith<$Res> {
  factory $LocationCoordinatesCopyWith(
          LocationCoordinates value, $Res Function(LocationCoordinates) then) =
      _$LocationCoordinatesCopyWithImpl<$Res, LocationCoordinates>;
  @useResult
  $Res call({@JsonKey(name: 'type') String type, List<double> coordinates});
}

/// @nodoc
class _$LocationCoordinatesCopyWithImpl<$Res, $Val extends LocationCoordinates>
    implements $LocationCoordinatesCopyWith<$Res> {
  _$LocationCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationCoordinatesImplCopyWith<$Res>
    implements $LocationCoordinatesCopyWith<$Res> {
  factory _$$LocationCoordinatesImplCopyWith(_$LocationCoordinatesImpl value,
          $Res Function(_$LocationCoordinatesImpl) then) =
      __$$LocationCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') String type, List<double> coordinates});
}

/// @nodoc
class __$$LocationCoordinatesImplCopyWithImpl<$Res>
    extends _$LocationCoordinatesCopyWithImpl<$Res, _$LocationCoordinatesImpl>
    implements _$$LocationCoordinatesImplCopyWith<$Res> {
  __$$LocationCoordinatesImplCopyWithImpl(_$LocationCoordinatesImpl _value,
      $Res Function(_$LocationCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$LocationCoordinatesImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationCoordinatesImpl implements _LocationCoordinates {
  _$LocationCoordinatesImpl(
      {@JsonKey(name: 'type') required this.type,
      required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$LocationCoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationCoordinatesImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'LocationCoordinates(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationCoordinatesImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationCoordinatesImplCopyWith<_$LocationCoordinatesImpl> get copyWith =>
      __$$LocationCoordinatesImplCopyWithImpl<_$LocationCoordinatesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _LocationCoordinates implements LocationCoordinates {
  factory _LocationCoordinates(
      {@JsonKey(name: 'type') required final String type,
      required final List<double> coordinates}) = _$LocationCoordinatesImpl;

  factory _LocationCoordinates.fromJson(Map<String, dynamic> json) =
      _$LocationCoordinatesImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$LocationCoordinatesImplCopyWith<_$LocationCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
