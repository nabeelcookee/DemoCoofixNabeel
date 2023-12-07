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
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'row_id')
  int get rowId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer')
  String get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerAddress')
  String get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'technician')
  String? get technician => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'productSerialNumber')
  String get productSerialNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRecurringService')
  bool get isRecurringService => throw _privateConstructorUsedError;
  @JsonKey(name: 'serviceDateSlot')
  String? get serviceDateSlot => throw _privateConstructorUsedError;
  @JsonKey(name: 'serviceDateTimeSlot')
  String get serviceDateTimeSlot => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_request_image_base_url')
  String get servicerequestimagebaseurl => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image_base_url')
  String get productimagebaseurl => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_image_base_url')
  String get serviceimagebaseurl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'row_id') int rowId,
      @JsonKey(name: 'customer') String customer,
      @JsonKey(name: 'customerAddress') String customerAddress,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'technician') String? technician,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'productSerialNumber') String productSerialNumber,
      @JsonKey(name: 'isRecurringService') bool isRecurringService,
      @JsonKey(name: 'serviceDateSlot') String? serviceDateSlot,
      @JsonKey(name: 'serviceDateTimeSlot') String serviceDateTimeSlot,
      @JsonKey(name: 'note') String note,
      @JsonKey(name: 'service_request_image_base_url')
      String servicerequestimagebaseurl,
      @JsonKey(name: 'product_image_base_url') String productimagebaseurl,
      @JsonKey(name: 'service_image_base_url') String serviceimagebaseurl,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
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
    Object? id = null,
    Object? rowId = null,
    Object? customer = null,
    Object? customerAddress = null,
    Object? name = null,
    Object? image = null,
    Object? technician = freezed,
    Object? phoneNumber = null,
    Object? productSerialNumber = null,
    Object? isRecurringService = null,
    Object? serviceDateSlot = freezed,
    Object? serviceDateTimeSlot = null,
    Object? note = null,
    Object? servicerequestimagebaseurl = null,
    Object? productimagebaseurl = null,
    Object? serviceimagebaseurl = null,
    Object? status = null,
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
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      technician: freezed == technician
          ? _value.technician
          : technician // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productSerialNumber: null == productSerialNumber
          ? _value.productSerialNumber
          : productSerialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurringService: null == isRecurringService
          ? _value.isRecurringService
          : isRecurringService // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceDateSlot: freezed == serviceDateSlot
          ? _value.serviceDateSlot
          : serviceDateSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDateTimeSlot: null == serviceDateTimeSlot
          ? _value.serviceDateTimeSlot
          : serviceDateTimeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      servicerequestimagebaseurl: null == servicerequestimagebaseurl
          ? _value.servicerequestimagebaseurl
          : servicerequestimagebaseurl // ignore: cast_nullable_to_non_nullable
              as String,
      productimagebaseurl: null == productimagebaseurl
          ? _value.productimagebaseurl
          : productimagebaseurl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceimagebaseurl: null == serviceimagebaseurl
          ? _value.serviceimagebaseurl
          : serviceimagebaseurl // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'row_id') int rowId,
      @JsonKey(name: 'customer') String customer,
      @JsonKey(name: 'customerAddress') String customerAddress,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'technician') String? technician,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'productSerialNumber') String productSerialNumber,
      @JsonKey(name: 'isRecurringService') bool isRecurringService,
      @JsonKey(name: 'serviceDateSlot') String? serviceDateSlot,
      @JsonKey(name: 'serviceDateTimeSlot') String serviceDateTimeSlot,
      @JsonKey(name: 'note') String note,
      @JsonKey(name: 'service_request_image_base_url')
      String servicerequestimagebaseurl,
      @JsonKey(name: 'product_image_base_url') String productimagebaseurl,
      @JsonKey(name: 'service_image_base_url') String serviceimagebaseurl,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
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
    Object? id = null,
    Object? rowId = null,
    Object? customer = null,
    Object? customerAddress = null,
    Object? name = null,
    Object? image = null,
    Object? technician = freezed,
    Object? phoneNumber = null,
    Object? productSerialNumber = null,
    Object? isRecurringService = null,
    Object? serviceDateSlot = freezed,
    Object? serviceDateTimeSlot = null,
    Object? note = null,
    Object? servicerequestimagebaseurl = null,
    Object? productimagebaseurl = null,
    Object? serviceimagebaseurl = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$NewRequestModelImpl(
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
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      technician: freezed == technician
          ? _value.technician
          : technician // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      productSerialNumber: null == productSerialNumber
          ? _value.productSerialNumber
          : productSerialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurringService: null == isRecurringService
          ? _value.isRecurringService
          : isRecurringService // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceDateSlot: freezed == serviceDateSlot
          ? _value.serviceDateSlot
          : serviceDateSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDateTimeSlot: null == serviceDateTimeSlot
          ? _value.serviceDateTimeSlot
          : serviceDateTimeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      servicerequestimagebaseurl: null == servicerequestimagebaseurl
          ? _value.servicerequestimagebaseurl
          : servicerequestimagebaseurl // ignore: cast_nullable_to_non_nullable
              as String,
      productimagebaseurl: null == productimagebaseurl
          ? _value.productimagebaseurl
          : productimagebaseurl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceimagebaseurl: null == serviceimagebaseurl
          ? _value.serviceimagebaseurl
          : serviceimagebaseurl // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$NewRequestModelImpl implements _NewRequestModel {
  _$NewRequestModelImpl(
      {@JsonKey(name: '_id') this.id = "",
      @JsonKey(name: 'row_id') this.rowId = 0,
      @JsonKey(name: 'customer') this.customer = "",
      @JsonKey(name: 'customerAddress') this.customerAddress = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'image') this.image = "",
      @JsonKey(name: 'technician') this.technician = "",
      @JsonKey(name: 'phone_number') this.phoneNumber = "",
      @JsonKey(name: 'productSerialNumber') this.productSerialNumber = "",
      @JsonKey(name: 'isRecurringService') this.isRecurringService = false,
      @JsonKey(name: 'serviceDateSlot') this.serviceDateSlot = "",
      @JsonKey(name: 'serviceDateTimeSlot') this.serviceDateTimeSlot = "",
      @JsonKey(name: 'note') this.note = "",
      @JsonKey(name: 'service_request_image_base_url')
      this.servicerequestimagebaseurl = "",
      @JsonKey(name: 'product_image_base_url') this.productimagebaseurl = "",
      @JsonKey(name: 'service_image_base_url') this.serviceimagebaseurl = '',
      @JsonKey(name: 'status') this.status = "",
      @JsonKey(name: 'createdAt') this.createdAt = "",
      @JsonKey(name: 'updatedAt') this.updatedAt = ""});

  factory _$NewRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewRequestModelImplFromJson(json);

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
  @JsonKey(name: 'customerAddress')
  final String customerAddress;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'technician')
  final String? technician;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'productSerialNumber')
  final String productSerialNumber;
  @override
  @JsonKey(name: 'isRecurringService')
  final bool isRecurringService;
  @override
  @JsonKey(name: 'serviceDateSlot')
  final String? serviceDateSlot;
  @override
  @JsonKey(name: 'serviceDateTimeSlot')
  final String serviceDateTimeSlot;
  @override
  @JsonKey(name: 'note')
  final String note;
  @override
  @JsonKey(name: 'service_request_image_base_url')
  final String servicerequestimagebaseurl;
  @override
  @JsonKey(name: 'product_image_base_url')
  final String productimagebaseurl;
  @override
  @JsonKey(name: 'service_image_base_url')
  final String serviceimagebaseurl;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'NewRequestModel(id: $id, rowId: $rowId, customer: $customer, customerAddress: $customerAddress, name: $name, image: $image, technician: $technician, phoneNumber: $phoneNumber, productSerialNumber: $productSerialNumber, isRecurringService: $isRecurringService, serviceDateSlot: $serviceDateSlot, serviceDateTimeSlot: $serviceDateTimeSlot, note: $note, servicerequestimagebaseurl: $servicerequestimagebaseurl, productimagebaseurl: $productimagebaseurl, serviceimagebaseurl: $serviceimagebaseurl, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rowId, rowId) || other.rowId == rowId) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.technician, technician) ||
                other.technician == technician) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.productSerialNumber, productSerialNumber) ||
                other.productSerialNumber == productSerialNumber) &&
            (identical(other.isRecurringService, isRecurringService) ||
                other.isRecurringService == isRecurringService) &&
            (identical(other.serviceDateSlot, serviceDateSlot) ||
                other.serviceDateSlot == serviceDateSlot) &&
            (identical(other.serviceDateTimeSlot, serviceDateTimeSlot) ||
                other.serviceDateTimeSlot == serviceDateTimeSlot) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.servicerequestimagebaseurl,
                    servicerequestimagebaseurl) ||
                other.servicerequestimagebaseurl ==
                    servicerequestimagebaseurl) &&
            (identical(other.productimagebaseurl, productimagebaseurl) ||
                other.productimagebaseurl == productimagebaseurl) &&
            (identical(other.serviceimagebaseurl, serviceimagebaseurl) ||
                other.serviceimagebaseurl == serviceimagebaseurl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        rowId,
        customer,
        customerAddress,
        name,
        image,
        technician,
        phoneNumber,
        productSerialNumber,
        isRecurringService,
        serviceDateSlot,
        serviceDateTimeSlot,
        note,
        servicerequestimagebaseurl,
        productimagebaseurl,
        serviceimagebaseurl,
        status,
        createdAt,
        updatedAt
      ]);

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
      {@JsonKey(name: '_id') final String id,
      @JsonKey(name: 'row_id') final int rowId,
      @JsonKey(name: 'customer') final String customer,
      @JsonKey(name: 'customerAddress') final String customerAddress,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'technician') final String? technician,
      @JsonKey(name: 'phone_number') final String phoneNumber,
      @JsonKey(name: 'productSerialNumber') final String productSerialNumber,
      @JsonKey(name: 'isRecurringService') final bool isRecurringService,
      @JsonKey(name: 'serviceDateSlot') final String? serviceDateSlot,
      @JsonKey(name: 'serviceDateTimeSlot') final String serviceDateTimeSlot,
      @JsonKey(name: 'note') final String note,
      @JsonKey(name: 'service_request_image_base_url')
      final String servicerequestimagebaseurl,
      @JsonKey(name: 'product_image_base_url') final String productimagebaseurl,
      @JsonKey(name: 'service_image_base_url') final String serviceimagebaseurl,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'createdAt') final String createdAt,
      @JsonKey(name: 'updatedAt')
      final String updatedAt}) = _$NewRequestModelImpl;

  factory _NewRequestModel.fromJson(Map<String, dynamic> json) =
      _$NewRequestModelImpl.fromJson;

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
  @JsonKey(name: 'customerAddress')
  String get customerAddress;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'technician')
  String? get technician;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'productSerialNumber')
  String get productSerialNumber;
  @override
  @JsonKey(name: 'isRecurringService')
  bool get isRecurringService;
  @override
  @JsonKey(name: 'serviceDateSlot')
  String? get serviceDateSlot;
  @override
  @JsonKey(name: 'serviceDateTimeSlot')
  String get serviceDateTimeSlot;
  @override
  @JsonKey(name: 'note')
  String get note;
  @override
  @JsonKey(name: 'service_request_image_base_url')
  String get servicerequestimagebaseurl;
  @override
  @JsonKey(name: 'product_image_base_url')
  String get productimagebaseurl;
  @override
  @JsonKey(name: 'service_image_base_url')
  String get serviceimagebaseurl;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NewRequestModelImplCopyWith<_$NewRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
