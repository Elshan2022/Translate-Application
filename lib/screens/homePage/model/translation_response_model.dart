
import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_response_model.freezed.dart';

part 'translation_response_model.g.dart';


@freezed
class TranslationResponseModel with _$TranslationResponseModel {
  const factory TranslationResponseModel({
    String? translatedText,
  }) = _TranslationResponseModel;

  factory TranslationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationResponseModelFromJson(json);
}
