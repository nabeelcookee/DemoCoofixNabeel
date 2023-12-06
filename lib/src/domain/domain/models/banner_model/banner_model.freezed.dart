// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_title')
  String? get promoTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_title')
  String? get offerTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_base_url')
  String? get banneImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'promo_title') String? promoTitle,
      @JsonKey(name: 'offer_title') String? offerTitle,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'image_base_url') String? banneImage});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? promoTitle = freezed,
    Object? offerTitle = freezed,
    Object? image = freezed,
    Object? banneImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      promoTitle: freezed == promoTitle
          ? _value.promoTitle
          : promoTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      offerTitle: freezed == offerTitle
          ? _value.offerTitle
          : offerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      banneImage: freezed == banneImage
          ? _value.banneImage
          : banneImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'promo_title') String? promoTitle,
      @JsonKey(name: 'offer_title') String? offerTitle,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'image_base_url') String? banneImage});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? promoTitle = freezed,
    Object? offerTitle = freezed,
    Object? image = freezed,
    Object? banneImage = freezed,
  }) {
    return _then(_$BannerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      promoTitle: freezed == promoTitle
          ? _value.promoTitle
          : promoTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      offerTitle: freezed == offerTitle
          ? _value.offerTitle
          : offerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      banneImage: freezed == banneImage
          ? _value.banneImage
          : banneImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerModelImpl implements _BannerModel {
  _$BannerModelImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'promo_title') this.promoTitle,
      @JsonKey(name: 'offer_title') this.offerTitle,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'image_base_url') this.banneImage});

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'promo_title')
  final String? promoTitle;
  @override
  @JsonKey(name: 'offer_title')
  final String? offerTitle;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'image_base_url')
  final String? banneImage;

  @override
  String toString() {
    return 'BannerModel(id: $id, title: $title, promoTitle: $promoTitle, offerTitle: $offerTitle, image: $image, banneImage: $banneImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.promoTitle, promoTitle) ||
                other.promoTitle == promoTitle) &&
            (identical(other.offerTitle, offerTitle) ||
                other.offerTitle == offerTitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.banneImage, banneImage) ||
                other.banneImage == banneImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, promoTitle, offerTitle, image, banneImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  factory _BannerModel(
          {@JsonKey(name: '_id') final String? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'promo_title') final String? promoTitle,
          @JsonKey(name: 'offer_title') final String? offerTitle,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'image_base_url') final String? banneImage}) =
      _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'promo_title')
  String? get promoTitle;
  @override
  @JsonKey(name: 'offer_title')
  String? get offerTitle;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'image_base_url')
  String? get banneImage;
  @override
  @JsonKey(ignore: true)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
