// ignore_for_file: public_member_api_docs

import 'package:dartz/dartz.dart';
import 'package:flutter_resume_builder_app/core/enums/network_connectivity_enum.dart';
import 'package:flutter_resume_builder_app/core/errors/exceptions.dart';
import 'package:flutter_resume_builder_app/core/errors/failure.dart';
import 'package:flutter_resume_builder_app/core/init/network/connectivity_info.dart';
import 'package:flutter_resume_builder_app/features/template/data/datasources/template_local_data_source.dart';
import 'package:flutter_resume_builder_app/features/template/data/datasources/template_remote_data_source.dart';
import 'package:flutter_resume_builder_app/features/template/data/models/template_model.dart';
import 'package:flutter_resume_builder_app/features/template/domain/repositories/template_repository.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  TemplateRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectivityInfo,
  });
  final TemplateRemoteDataSource remoteDataSource;
  final TemplateLocalDataSource localDataSource;
  final ConnectivityInfo connectivityInfo;

  @override
  Future<Either<Failure, TemplateModel>> getTemplate() async {
    if (await connectivityInfo.isConnected != NetworkConnectivityEnum.off) {
      try {
        final remoteTemplate = await remoteDataSource.getTemplate();

        await localDataSource.cacheTemplate(templateToCache: remoteTemplate);

        return Right(remoteTemplate);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      try {
        final localTemplate = await localDataSource.getLastTemplate();
        return Right(localTemplate);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'This is a cache exception'));
      }
    }
  }
}
