// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prodect_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProdectState {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ProductPurchaseModel> get prodectList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProdectStateCopyWith<ProdectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdectStateCopyWith<$Res> {
  factory $ProdectStateCopyWith(
          ProdectState value, $Res Function(ProdectState) then) =
      _$ProdectStateCopyWithImpl<$Res, ProdectState>;
  @useResult
  $Res call(
      {bool status, String message, List<ProductPurchaseModel> prodectList});
}

/// @nodoc
class _$ProdectStateCopyWithImpl<$Res, $Val extends ProdectState>
    implements $ProdectStateCopyWith<$Res> {
  _$ProdectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? prodectList = null,
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
      prodectList: null == prodectList
          ? _value.prodectList
          : prodectList // ignore: cast_nullable_to_non_nullable
              as List<ProductPurchaseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProdectSalesStateImplCopyWith<$Res>
    implements $ProdectStateCopyWith<$Res> {
  factory _$$ProdectSalesStateImplCopyWith(_$ProdectSalesStateImpl value,
          $Res Function(_$ProdectSalesStateImpl) then) =
      __$$ProdectSalesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status, String message, List<ProductPurchaseModel> prodectList});
}

/// @nodoc
class __$$ProdectSalesStateImplCopyWithImpl<$Res>
    extends _$ProdectStateCopyWithImpl<$Res, _$ProdectSalesStateImpl>
    implements _$$ProdectSalesStateImplCopyWith<$Res> {
  __$$ProdectSalesStateImplCopyWithImpl(_$ProdectSalesStateImpl _value,
      $Res Function(_$ProdectSalesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? prodectList = null,
  }) {
    return _then(_$ProdectSalesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      prodectList: null == prodectList
          ? _value._prodectList
          : prodectList // ignore: cast_nullable_to_non_nullable
              as List<ProductPurchaseModel>,
    ));
  }
}

/// @nodoc

class _$ProdectSalesStateImpl implements _ProdectSalesState {
  _$ProdectSalesStateImpl(
      {required this.status,
      required this.message,
      required final List<ProductPurchaseModel> prodectList})
      : _prodectList = prodectList;

  @override
  final bool status;
  @override
  final String message;
  final List<ProductPurchaseModel> _prodectList;
  @override
  List<ProductPurchaseModel> get prodectList {
    if (_prodectList is EqualUnmodifiableListView) return _prodectList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prodectList);
  }

  @override
  String toString() {
    return 'ProdectState(status: $status, message: $message, prodectList: $prodectList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdectSalesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._prodectList, _prodectList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_prodectList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdectSalesStateImplCopyWith<_$ProdectSalesStateImpl> get copyWith =>
      __$$ProdectSalesStateImplCopyWithImpl<_$ProdectSalesStateImpl>(
          this, _$identity);
}

abstract class _ProdectSalesState implements ProdectState {
  factory _ProdectSalesState(
          {required final bool status,
          required final String message,
          required final List<ProductPurchaseModel> prodectList}) =
      _$ProdectSalesStateImpl;

  @override
  bool get status;
  @override
  String get message;
  @override
  List<ProductPurchaseModel> get prodectList;
  @override
  @JsonKey(ignore: true)
  _$$ProdectSalesStateImplCopyWith<_$ProdectSalesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
