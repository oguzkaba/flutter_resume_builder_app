import 'package:dartz/dartz.dart';
import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/features/auth/domain/entities/account_type_entity.dart';
import 'package:fixresume/features/auth/domain/entities/subscriptions_entity.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:flutter/material.dart';

abstract interface class AuthRepository {
  /// Auth
  Future<Either<Failure, UserDetailsEntity>> registerWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserDetailsEntity>> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserDetailsEntity>> loginWithLinkedin();

  Future<Either<Failure, UserDetailsEntity>> loginWithGithub();

  Future<Either<Failure, UserDetailsEntity>> loginWithGoogle();

  Future<Either<Failure, UserDetailsEntity>> loginWithApple(
    BuildContext context,
  );

  Future<Either<Failure, UserDetailsEntity>> currentUser();

  Future<Either<Failure, void>> logout();

  /// Account Type - Only GET
  Future<Either<Failure, AccountTypeEntity>> getAccountType({
    required AccountTypeEnum accTypeEnum,
  });

  /// Subscriptions
  Future<Either<Failure, SubscriptionsEntity?>> getSubscriptions({
    required String userId,
  });
  Future<Either<Failure, void>> addSubscriptions({
    required String userId,
    required String accType,
  });

  Future<Either<Failure, void>> updateSubscriptions({
    required String userId,
    required String accType,
  });

  Future<Either<Failure, void>> deleteSubscriptions({
    required int id,
  });

  /// User Details
  Future<Either<Failure, UserDetailsEntity>> getUserDetails();

  Future<Either<Failure, void>> addUserDetails({
    required UserDetailsEntity userDetailsEntity,
  });
  Future<Either<Failure, UserDetailsEntity>> updateUserDetails({
    required UserDetailsEntity userDetailsEntity,
  });

  Future<Either<Failure, void>> deleteUserDetails({
    required int id,
  });
}
