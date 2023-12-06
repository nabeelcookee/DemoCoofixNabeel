// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prodect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProdectEvent {
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int skip, int limit, String id) getProdects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int skip, int limit, String id)? getProdects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int skip, int limit, String id)? getProdects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_prodectSalesEvent value) getProdects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_prodectSalesEvent value)? getProdects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_prodectSalesEvent value)? getProdects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProdectEventCopyWith<ProdectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdectEventCopyWith<$Res> {
  factory $ProdectEventCopyWith(
          ProdectEvent value, $Res Function(ProdectEvent) then) =
      _$ProdectEventCopyWithImpl<$Res, ProdectEvent>;
  @useResult
  $Res call({int skip, int limit, String id});
}

/// @nodoc
class _$ProdectEventCopyWithImpl<$Res, $Val extends ProdectEvent>
    implements $ProdectEventCopyWith<$Res> {
  _$ProdectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? limit = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$prodectSalesEventImplCopyWith<$Res>
    implements $ProdectEventCopyWith<$Res> {
  factory _$$prodectSalesEventImplCopyWith(_$prodectSalesEventImpl value,
          $Res Function(_$prodectSalesEventImpl) then) =
      __$$prodectSalesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int skip, int limit, String id});
}

/// @nodoc
class __$$prodectSalesEventImplCopyWithImpl<$Res>
    extends _$ProdectEventCopyWithImpl<$Res, _$prodectSalesEventImpl>
    implements _$$prodectSalesEventImplCopyWith<$Res> {
  __$$prodectSalesEventImplCopyWithImpl(_$prodectSalesEventImpl _value,
      $Res Function(_$prodectSalesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? limit = null,
    Object? id = null,
  }) {
    return _then(_$prodectSalesEventImpl(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$prodectSalesEventImpl implements _prodectSalesEvent {
  _$prodectSalesEventImpl(
      {required this.skip, required this.limit, required this.id});

  @override
  final int skip;
  @override
  final int limit;
  @override
  final String id;

  @override
  String toString() {
    return 'ProdectEvent.getProdects(skip: $skip, limit: $limit, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$prodectSalesEventImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip, limit, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$prodectSalesEventImplCopyWith<_$prodectSalesEventImpl> get copyWith =>
      __$$prodectSalesEventImplCopyWithImpl<_$prodectSalesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int skip, int limit, String id) getProdects,
  }) {
    return getProdects(skip, limit, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int skip, int limit, String id)? getProdects,
  }) {
    return getProdects?.call(skip, limit, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int skip, int limit, String id)? getProdects,
    required TResult orElse(),
  }) {
    if (getProdects != null) {
      return getProdects(skip, limit, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_prodectSalesEvent value) getProdects,
  }) {
    return getProdects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_prodectSalesEvent value)? getProdects,
  }) {
    return getProdects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_prodectSalesEvent value)? getProdects,
    required TResult orElse(),
  }) {
    if (getProdects != null) {
      return getProdects(this);
    }
    return orElse();
  }
}

abstract class _prodectSalesEvent implements ProdectEvent {
  factory _prodectSalesEvent(
      {required final int skip,
      required final int limit,
      required final String id}) = _$prodectSalesEventImpl;

  @override
  int get skip;
  @override
  int get limit;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$prodectSalesEventImplCopyWith<_$prodectSalesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
