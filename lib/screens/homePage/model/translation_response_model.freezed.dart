// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TranslationResponseModel _$TranslationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _TranslationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TranslationResponseModel {
  String? get translatedText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationResponseModelCopyWith<TranslationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationResponseModelCopyWith<$Res> {
  factory $TranslationResponseModelCopyWith(TranslationResponseModel value,
          $Res Function(TranslationResponseModel) then) =
      _$TranslationResponseModelCopyWithImpl<$Res, TranslationResponseModel>;
  @useResult
  $Res call({String? translatedText});
}

/// @nodoc
class _$TranslationResponseModelCopyWithImpl<$Res,
        $Val extends TranslationResponseModel>
    implements $TranslationResponseModelCopyWith<$Res> {
  _$TranslationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = freezed,
  }) {
    return _then(_value.copyWith(
      translatedText: freezed == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationResponseModelImplCopyWith<$Res>
    implements $TranslationResponseModelCopyWith<$Res> {
  factory _$$TranslationResponseModelImplCopyWith(
          _$TranslationResponseModelImpl value,
          $Res Function(_$TranslationResponseModelImpl) then) =
      __$$TranslationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? translatedText});
}

/// @nodoc
class __$$TranslationResponseModelImplCopyWithImpl<$Res>
    extends _$TranslationResponseModelCopyWithImpl<$Res,
        _$TranslationResponseModelImpl>
    implements _$$TranslationResponseModelImplCopyWith<$Res> {
  __$$TranslationResponseModelImplCopyWithImpl(
      _$TranslationResponseModelImpl _value,
      $Res Function(_$TranslationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = freezed,
  }) {
    return _then(_$TranslationResponseModelImpl(
      translatedText: freezed == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationResponseModelImpl implements _TranslationResponseModel {
  const _$TranslationResponseModelImpl({this.translatedText});

  factory _$TranslationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationResponseModelImplFromJson(json);

  @override
  final String? translatedText;

  @override
  String toString() {
    return 'TranslationResponseModel(translatedText: $translatedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationResponseModelImpl &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, translatedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationResponseModelImplCopyWith<_$TranslationResponseModelImpl>
      get copyWith => __$$TranslationResponseModelImplCopyWithImpl<
          _$TranslationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _TranslationResponseModel implements TranslationResponseModel {
  const factory _TranslationResponseModel({final String? translatedText}) =
      _$TranslationResponseModelImpl;

  factory _TranslationResponseModel.fromJson(Map<String, dynamic> json) =
      _$TranslationResponseModelImpl.fromJson;

  @override
  String? get translatedText;
  @override
  @JsonKey(ignore: true)
  _$$TranslationResponseModelImplCopyWith<_$TranslationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
