// ignore_for_file: public_member_api_docs, one_member_abstracts

import 'package:dio/dio.dart';
import 'package:flutter_resume_builder_app/core/errors/exceptions.dart';
import 'package:flutter_resume_builder_app/features/template/data/models/template_model.dart';

abstract class TemplateRemoteDataSource {
  Future<TemplateModel> getTemplate();
}

class TemplateRemoteDataSourceImpl implements TemplateRemoteDataSource {
  TemplateRemoteDataSourceImpl({required this.dio});
  final Dio dio;

  @override
  Future<TemplateModel> getTemplate() async {
    final response = await dio.get<Map<String, dynamic>>(
      'https://pokeapi.co/api/v2/pokemon/',
      queryParameters: {
        'api_key': 'if needed',
      },
    );

    if (response.statusCode == 200) {
      return TemplateModel.fromJson(
        json: response.data!,
      );
    } else {
      throw ServerException();
    }
  }
}
