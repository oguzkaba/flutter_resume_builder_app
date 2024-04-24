// ignore_for_file: public_member_api_docs, depend_on_referenced_packages

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/errors/failure.dart';
import 'package:flutter_resume_builder_app/core/init/network/connectivity_info.dart';
import 'package:flutter_resume_builder_app/features/template/data/datasources/template_local_data_source.dart';
import 'package:flutter_resume_builder_app/features/template/data/datasources/template_remote_data_source.dart';
import 'package:flutter_resume_builder_app/features/template/data/repositories/template_repository_impl.dart';
import 'package:flutter_resume_builder_app/features/template/domain/entities/template_entity.dart';
import 'package:flutter_resume_builder_app/features/template/domain/usecases/get_template.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemplateProvider extends ChangeNotifier {
  TemplateProvider({
    this.template,
    this.failure,
  });
  TemplateEntity? template;
  Failure? failure;

  Future<void> eitherFailureOrTemplate() async {
    final repository = TemplateRepositoryImpl(
      remoteDataSource: TemplateRemoteDataSourceImpl(
        dio: Dio(),
      ),
      localDataSource: TemplateLocalDataSourceImpl(
        sharedPreferences: await SharedPreferences.getInstance(),
      ),
      connectivityInfo: ConnectivityInfoImpl(
        connectivity: Connectivity(),
      ),
    );

    final failureOrTemplate =
        await GetTemplate(templateRepository: repository).call();

    failureOrTemplate.fold(
      (Failure newFailure) {
        template = null;
        failure = newFailure;
        notifyListeners();
      },
      (TemplateEntity newTemplate) {
        template = newTemplate;
        failure = null;
        notifyListeners();
      },
    );
  }
}
