import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/data/models/account_type_model.dart';
import 'package:fixresume/features/auth/data/models/subscriptions_model.dart';
import 'package:fixresume/features/auth/data/models/user_details_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  User? get currentUser;
  Future<UserDetailsModel> registerWithEmailPassword({
    required String email,
    required String password,
  });
  Future<UserDetailsModel> loginWithEmailPassword({
    required String email,
    required String password,
  });
  Future<UserDetailsModel> getUserDetails();
  Future<UserDetailsModel> addUserDetails({
    required UserDetailsModel userDetailsModel,
  });
  Future<UserDetailsModel> loginWithGoogle();
  Future<UserDetailsModel> loginWithApple();
  Future<UserDetailsModel> loginWithGithub();
  Future<AccountTypeModel> getAccountType({
    required String accTypeStr,
  });
  Future<SubscriptionsModel?> getSubscriptions({
    required String userId,
  });

  Future<SubscriptionsModel> addSubscriptions({
    required String userId,
    required String accType,
  });

  Future<void> logout();
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.supabaseClient, this.googleSignIn);
  final SupabaseClient supabaseClient;
  final GoogleSignIn googleSignIn;

  @override
  User? get currentUser => supabaseClient.auth.currentUser;

  @override
  Future<UserDetailsModel> getUserDetails() async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }
      final response = await supabaseClient
          .from('user_details')
          .select()
          .eq('user_id', currentUser!.id);
      if (response.isEmpty) {
        late SubscriptionsModel? subscriptions;

        subscriptions = await getSubscriptions(userId: currentUser!.id);
        subscriptions ??= await addSubscriptions(
          userId: currentUser!.id,
          accType: 'free',
        );
        final response = await addUserDetails(
          userDetailsModel: UserDetailsModel(
            userId: currentUser!.id,
            fullName: currentUser!.userMetadata?['full_name'] as String?,
            photoUrl: currentUser!.userMetadata?['avatar_url'] as String?,
            accType: 'free',
            subscriptions: subscriptions.id,
            status: true,
            currentUser: currentUser!,
            appVersion: getIt<PackageInfo>().version,
            deviceInfo: Platform.isAndroid
                ? getIt<AndroidDeviceInfo>().toString()
                : getIt<IosDeviceInfo>().toString(),
          ),
        );
        return response;
      }
      return userDetailsModelFromJson(response).first;
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserDetailsModel> addUserDetails({
    required UserDetailsModel userDetailsModel,
  }) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      final response = await supabaseClient
          .from('user_details')
          .insert(
            userDetailsModelToJson([userDetailsModel]).first,
          )
          .select();
      if (response.isEmpty) {
        throw ServerException(message: 'User Details not found!');
      }
      return userDetailsModelFromJson(response).first;
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserDetailsModel> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth.signInWithPassword(
        password: password,
        email: email,
      );
      if (response.user == null) {
        throw ServerException(message: 'User is null!');
      }
      return await getUserDetails();
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserDetailsModel> registerWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
      );
      if (response.user == null) {
        throw ServerException(message: 'User is null!');
      }
      return await getUserDetails();
    } on AuthException catch (e) {
      if (e.message.contains('User already registered')) {
        return loginWithEmailPassword(email: email, password: password);
      } else {
        throw ServerException(message: e.message);
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserDetailsModel> loginWithGoogle() async {
    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.
    try {
      /// Sign in with Google
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        throw ServerException(message: 'Google Sign In failed.');
      }

      /// Get the authentication details
      final googleAuth = await googleUser.authentication;

      /// Get the access token and id token
      final accessToken = googleAuth.accessToken;

      /// Get the ID token
      final idToken = googleAuth.idToken;

      /// Check if the tokens are null
      if (accessToken == null) {
        throw ServerException(message: 'No Access Token found.');
      }
      if (idToken == null) {
        throw ServerException(message: 'No ID Token found.');
      }

      /// Sign in Supabase with the tokens
      final response = await supabaseClient.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      if (response.user == null) {
        throw ServerException(message: 'User is null!');
      }
      return await getUserDetails();
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserDetailsModel> loginWithApple() {
    // TO-DO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future<UserDetailsModel> loginWithGithub() async {
    // TO-DO: implement loginWithGithub
    throw UnimplementedError();
  }

  @override
  Future<AccountTypeModel> getAccountType({
    required String accTypeStr,
  }) async {
    try {
      final response = await supabaseClient
          .from('account_type')
          .select()
          .eq('name', accTypeStr);
      if (response.isEmpty) {
        throw ServerException(message: 'Account Type not found!');
      }
      return accountTypeModelFromJson(response).first;
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<SubscriptionsModel?> getSubscriptions({required String userId}) async {
    try {
      final response = await supabaseClient
          .from('subscriptions')
          .select()
          .eq('user_id', userId);
      if (response.isEmpty) {
        return null;
      }
      return subscriptionsModelFromJson(response).first;
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<SubscriptionsModel> addSubscriptions({
    required String userId,
    required String accType,
  }) async {
    try {
      final response = await supabaseClient.from('subscriptions').insert({
        'user_id': userId,
        'acc_type': accType,
      }).select();

      if (response.isEmpty) {
        throw ServerException(message: 'Subscription not found!');
      }
      return subscriptionsModelFromJson(response).first;
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      if (currentUser != null) {
        await Future.wait([
          if (currentUser!.appMetadata['provider'] == 'google')
            googleSignIn.disconnect(),
          supabaseClient.auth.signOut(),
        ]);
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
