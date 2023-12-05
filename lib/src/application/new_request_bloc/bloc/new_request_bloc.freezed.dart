// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewRequestEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)
        newrequest,
    required TResult Function(
            String id, int limit, int skip, String status, String productSaleId)
        listRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)?
        newrequest,
    TResult? Function(String id, int limit, int skip, String status,
            String productSaleId)?
        listRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)?
        newrequest,
    TResult Function(String id, int limit, int skip, String status,
            String productSaleId)?
        listRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_newrequest value) newrequest,
    required TResult Function(_listRequests value) listRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_newrequest value)? newrequest,
    TResult? Function(_listRequests value)? listRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_newrequest value)? newrequest,
    TResult Function(_listRequests value)? listRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewRequestEventCopyWith<NewRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRequestEventCopyWith<$Res> {
  factory $NewRequestEventCopyWith(
          NewRequestEvent value, $Res Function(NewRequestEvent) then) =
      _$NewRequestEventCopyWithImpl<$Res, NewRequestEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$NewRequestEventCopyWithImpl<$Res, $Val extends NewRequestEvent>
    implements $NewRequestEventCopyWith<$Res> {
  _$NewRequestEventCopyWithImpl(this._value, this._then);

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
abstract class _$$newrequestImplCopyWith<$Res>
    implements $NewRequestEventCopyWith<$Res> {
  factory _$$newrequestImplCopyWith(
          _$newrequestImpl value, $Res Function(_$newrequestImpl) then) =
      __$$newrequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String serviceId,
      String note,
      String serviceDateSlot,
      String serviceDateTimeSlot,
      String addressId,
      bool isRecurringService});
}

/// @nodoc
class __$$newrequestImplCopyWithImpl<$Res>
    extends _$NewRequestEventCopyWithImpl<$Res, _$newrequestImpl>
    implements _$$newrequestImplCopyWith<$Res> {
  __$$newrequestImplCopyWithImpl(
      _$newrequestImpl _value, $Res Function(_$newrequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? note = null,
    Object? serviceDateSlot = null,
    Object? serviceDateTimeSlot = null,
    Object? addressId = null,
    Object? isRecurringService = null,
  }) {
    return _then(_$newrequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      serviceDateSlot: null == serviceDateSlot
          ? _value.serviceDateSlot
          : serviceDateSlot // ignore: cast_nullable_to_non_nullable
              as String,
      serviceDateTimeSlot: null == serviceDateTimeSlot
          ? _value.serviceDateTimeSlot
          : serviceDateTimeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurringService: null == isRecurringService
          ? _value.isRecurringService
          : isRecurringService // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$newrequestImpl implements _newrequest {
  _$newrequestImpl(
      {required this.id,
      required this.serviceId,
      required this.note,
      required this.serviceDateSlot,
      required this.serviceDateTimeSlot,
      required this.addressId,
      required this.isRecurringService});

  @override
  final String id;
  @override
  final String serviceId;
  @override
  final String note;
  @override
  final String serviceDateSlot;
  @override
  final String serviceDateTimeSlot;
  @override
  final String addressId;
  @override
  final bool isRecurringService;

  @override
  String toString() {
    return 'NewRequestEvent.newrequest(id: $id, serviceId: $serviceId, note: $note, serviceDateSlot: $serviceDateSlot, serviceDateTimeSlot: $serviceDateTimeSlot, addressId: $addressId, isRecurringService: $isRecurringService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$newrequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.serviceDateSlot, serviceDateSlot) ||
                other.serviceDateSlot == serviceDateSlot) &&
            (identical(other.serviceDateTimeSlot, serviceDateTimeSlot) ||
                other.serviceDateTimeSlot == serviceDateTimeSlot) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.isRecurringService, isRecurringService) ||
                other.isRecurringService == isRecurringService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, serviceId, note,
      serviceDateSlot, serviceDateTimeSlot, addressId, isRecurringService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$newrequestImplCopyWith<_$newrequestImpl> get copyWith =>
      __$$newrequestImplCopyWithImpl<_$newrequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)
        newrequest,
    required TResult Function(
            String id, int limit, int skip, String status, String productSaleId)
        listRequests,
  }) {
    return newrequest(id, serviceId, note, serviceDateSlot, serviceDateTimeSlot,
        addressId, isRecurringService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)?
        newrequest,
    TResult? Function(String id, int limit, int skip, String status,
            String productSaleId)?
        listRequests,
  }) {
    return newrequest?.call(id, serviceId, note, serviceDateSlot,
        serviceDateTimeSlot, addressId, isRecurringService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)?
        newrequest,
    TResult Function(String id, int limit, int skip, String status,
            String productSaleId)?
        listRequests,
    required TResult orElse(),
  }) {
    if (newrequest != null) {
      return newrequest(id, serviceId, note, serviceDateSlot,
          serviceDateTimeSlot, addressId, isRecurringService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_newrequest value) newrequest,
    required TResult Function(_listRequests value) listRequests,
  }) {
    return newrequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_newrequest value)? newrequest,
    TResult? Function(_listRequests value)? listRequests,
  }) {
    return newrequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_newrequest value)? newrequest,
    TResult Function(_listRequests value)? listRequests,
    required TResult orElse(),
  }) {
    if (newrequest != null) {
      return newrequest(this);
    }
    return orElse();
  }
}

abstract class _newrequest implements NewRequestEvent {
  factory _newrequest(
      {required final String id,
      required final String serviceId,
      required final String note,
      required final String serviceDateSlot,
      required final String serviceDateTimeSlot,
      required final String addressId,
      required final bool isRecurringService}) = _$newrequestImpl;

  @override
  String get id;
  String get serviceId;
  String get note;
  String get serviceDateSlot;
  String get serviceDateTimeSlot;
  String get addressId;
  bool get isRecurringService;
  @override
  @JsonKey(ignore: true)
  _$$newrequestImplCopyWith<_$newrequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$listRequestsImplCopyWith<$Res>
    implements $NewRequestEventCopyWith<$Res> {
  factory _$$listRequestsImplCopyWith(
          _$listRequestsImpl value, $Res Function(_$listRequestsImpl) then) =
      __$$listRequestsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, int limit, int skip, String status, String productSaleId});
}

/// @nodoc
class __$$listRequestsImplCopyWithImpl<$Res>
    extends _$NewRequestEventCopyWithImpl<$Res, _$listRequestsImpl>
    implements _$$listRequestsImplCopyWith<$Res> {
  __$$listRequestsImplCopyWithImpl(
      _$listRequestsImpl _value, $Res Function(_$listRequestsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? limit = null,
    Object? skip = null,
    Object? status = null,
    Object? productSaleId = null,
  }) {
    return _then(_$listRequestsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      productSaleId: null == productSaleId
          ? _value.productSaleId
          : productSaleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$listRequestsImpl implements _listRequests {
  _$listRequestsImpl(
      {required this.id,
      required this.limit,
      required this.skip,
      required this.status,
      required this.productSaleId});

  @override
  final String id;
  @override
  final int limit;
  @override
  final int skip;
  @override
  final String status;
  @override
  final String productSaleId;

  @override
  String toString() {
    return 'NewRequestEvent.listRequests(id: $id, limit: $limit, skip: $skip, status: $status, productSaleId: $productSaleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$listRequestsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.productSaleId, productSaleId) ||
                other.productSaleId == productSaleId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, limit, skip, status, productSaleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$listRequestsImplCopyWith<_$listRequestsImpl> get copyWith =>
      __$$listRequestsImplCopyWithImpl<_$listRequestsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)
        newrequest,
    required TResult Function(
            String id, int limit, int skip, String status, String productSaleId)
        listRequests,
  }) {
    return listRequests(id, limit, skip, status, productSaleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)?
        newrequest,
    TResult? Function(String id, int limit, int skip, String status,
            String productSaleId)?
        listRequests,
  }) {
    return listRequests?.call(id, limit, skip, status, productSaleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String serviceId,
            String note,
            String serviceDateSlot,
            String serviceDateTimeSlot,
            String addressId,
            bool isRecurringService)?
        newrequest,
    TResult Function(String id, int limit, int skip, String status,
            String productSaleId)?
        listRequests,
    required TResult orElse(),
  }) {
    if (listRequests != null) {
      return listRequests(id, limit, skip, status, productSaleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_newrequest value) newrequest,
    required TResult Function(_listRequests value) listRequests,
  }) {
    return listRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_newrequest value)? newrequest,
    TResult? Function(_listRequests value)? listRequests,
  }) {
    return listRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_newrequest value)? newrequest,
    TResult Function(_listRequests value)? listRequests,
    required TResult orElse(),
  }) {
    if (listRequests != null) {
      return listRequests(this);
    }
    return orElse();
  }
}

abstract class _listRequests implements NewRequestEvent {
  factory _listRequests(
      {required final String id,
      required final int limit,
      required final int skip,
      required final String status,
      required final String productSaleId}) = _$listRequestsImpl;

  @override
  String get id;
  int get limit;
  int get skip;
  String get status;
  String get productSaleId;
  @override
  @JsonKey(ignore: true)
  _$$listRequestsImplCopyWith<_$listRequestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
