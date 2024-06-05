import 'package:dartz/dartz.dart';
import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/init/network/connectivity_info.dart';
import 'package:fixresume/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:fixresume/features/auth/data/models/user_details_model.dart';
import 'package:fixresume/features/auth/domain/entities/account_type_entity.dart';
import 'package:fixresume/features/auth/domain/entities/subscriptions_entity.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(
    this.remoteDataSource,
    this.connectivityInfo,
  );
  final AuthRemoteDataSource remoteDataSource;
  final ConnectivityInfo connectivityInfo;

  @override
  Future<Either<Failure, UserDetailsEntity>> currentUser() async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      final user = await remoteDataSource.getUserDetails();

      return right(user);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return _getUser(
      () async => remoteDataSource.loginWithEmailPassword(
        email: email,
        password: password,
      ),
    );
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> loginWithApple() {
    return _getUser(
      () async => remoteDataSource.loginWithApple(),
    );
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> loginWithGithub() async {
    return _getUser(
      () async => remoteDataSource.loginWithGithub(),
    );
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> loginWithGoogle() {
    return _getUser(
      () async => remoteDataSource.loginWithGoogle(),
    );
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> loginWithLinkedin() {
    // TO-DO: implement loginWithLinkedin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> registerWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return _getUser(
      () async => remoteDataSource.registerWithEmailPassword(
        email: email,
        password: password,
      ),
    );
  }

  Future<Either<Failure, UserDetailsEntity>> _getUser(
    Future<UserDetailsEntity> Function() fn,
  ) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      final user = await fn();

      return right(user);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, AccountTypeEntity>> getAccountType({
    required AccountTypeEnum accTypeEnum,
  }) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      } else {
        final response = await remoteDataSource.getAccountType(
          accTypeStr: accTypeEnum.name,
        );

        return right(response);
      }
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, SubscriptionsEntity?>> getSubscriptions({
    required String userId,
  }) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      } else {
        final response = await remoteDataSource.getSubscriptions(
          userId: userId,
        );

        return right(response);
      }
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, SubscriptionsEntity>> addSubscriptions({
    required String userId,
    required String accType,
  }) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      } else {
        final response = await remoteDataSource.addSubscriptions(
          userId: userId,
          accType: accType,
        );

        return right(response);
      }
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> getUserDetails() async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      } else {
        final response = await remoteDataSource.getUserDetails();

        return right(response);
      }
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, UserDetailsEntity>> addUserDetails(
    UserDetailsEntity userDetailsEntity,
  ) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      } else {
        final response = await remoteDataSource.addUserDetails(
          userDetailsModel: userDetailsEntity as UserDetailsModel,
        );

        return right(response);
      }
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      await remoteDataSource.logout();
      return right(null);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }
}
