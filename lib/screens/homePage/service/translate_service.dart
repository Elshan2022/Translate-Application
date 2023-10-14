import 'dart:io';
import 'package:flutter_translate_application/exception/custom_exception.dart';
import 'package:flutter_translate_application/screens/homePage/model/translation_response_model.dart';
import 'package:dio/dio.dart';

abstract class ITranslationService {
  Future<TranslationResponseModel>? translation(String? query);
}

class TranslationService extends ITranslationService {
  final Dio dio = Dio(
    BaseOptions(
      headers: {
        'content-type': 'application/json',
        'X-RapidAPI-Key': '652b15b2cfmsh5e1e2e00d29d4d3p1fdc23jsne002a61f5db9',
        'X-RapidAPI-Host': 'deep-translate1.p.rapidapi.com',
      },
    ),
  );

  final url = 'https://deep-translate1.p.rapidapi.com/language/translate/v2';
  @override
  Future<TranslationResponseModel>? translation(String? query) async {
    try {
      final response = await dio.post(
        url,
        data: {
          'q': query,
          'target': 'az',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        final data = response.data['data']['translations'];
        final text = TranslationResponseModel.fromJson(data);
        return text;
      } else {
        throw CustomException(response.data.toString());
      }
    } on DioException catch (e) {
      throw CustomException(e.message.toString());
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
