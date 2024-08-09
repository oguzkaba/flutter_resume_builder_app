import 'package:device_info_plus/device_info_plus.dart';
import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/data/models/account_type_model.dart';
import 'package:fixresume/features/auth/data/models/subscriptions_model.dart';
import 'package:fixresume/features/auth/data/models/user_details_model.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:signin_with_linkedin/signin_with_linkedin.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  /// Operations on the auth table
  User? get currentUser;

  Future<UserDetailsModel> registerWithEmailPassword({
    required String email,
    required String password,
  });
  Future<UserDetailsModel> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<UserDetailsModel> loginWithGoogle();
  Future<UserDetailsModel> loginWithApple(BuildContext context);
  Future<UserDetailsModel> loginWithGithub();

  /// Operations on the user_details table
  Future<UserDetailsModel> getUserDetails();
  Future<void> addUserDetails({
    required UserDetailsModel userDetailsModel,
  });
  Future<UserDetailsModel> updateUserDetails({
    required UserDetailsModel userDetailsModel,
  });
  Future<void> deleteUserDetails({
    required int id,
  });

  /// Operations on the account_type table
  Future<AccountTypeModel> getAccountType({
    required String accTypeStr,
  });

  /// Operations on the subscriptions table
  Future<SubscriptionsModel?> getSubscriptions({
    required String userId,
  });

  Future<void> addSubscriptions({
    required String userId,
    required String accType,
  });

  Future<void> updateSubscriptions({
    required String userId,
    required String accType,
  });
  Future<void> deleteSubscriptions({
    required int id,
  });

  Future<void> logout();
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(
    this.supabaseClient,
    this.googleSignIn,
    this.linkedInConfig,
  );
  final SupabaseClient supabaseClient;
  final GoogleSignIn googleSignIn;
  final LinkedInConfig linkedInConfig;

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
        if (subscriptions == null) {
          await addSubscriptions(
            userId: currentUser!.id,
            accType: 'free',
          );
          subscriptions = await getSubscriptions(userId: currentUser!.id);
        }
        await addUserDetails(
          userDetailsModel: UserDetailsModel(
            userId: currentUser!.id,
            fullName: currentUser!.userMetadata?['full_name'] as String?,
            photoUrl: currentUser!.userMetadata?['avatar_url'] as String?,
            accType: subscriptions?.accType ?? 'free',
            subscriptions: subscriptions?.id,
            status: true,
            currentUser: currentUser!,
            appVersion: getIt<PackageInfo>().version,
            deviceInfo: getIt<BaseDeviceInfo>().toString(),
          ),
        );
      }
      return userDetailsModelFromJson(response).first;
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> addUserDetails({
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
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<UserDetailsModel> updateUserDetails({
    required UserDetailsModel userDetailsModel,
  }) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      final response = await supabaseClient
          .from('user_details')
          .update(userDetailsModelToJson([userDetailsModel]).first)
          .eq('user_id', currentUser!.id)
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
  Future<void> deleteUserDetails({required int id}) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      final response = await supabaseClient
          .from('user_details')
          .delete()
          .eq('id', id)
          .select();
      if (response.isEmpty) {
        throw ServerException(message: 'User Details not found!');
      }
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
  Future<UserDetailsModel> loginWithApple(BuildContext context) async {
    // TO-DO: implement loginWithApple
    throw UnimplementedError();
    // await SignInWithLinkedIn.signIn(
    //   context,
    //   config: linkedInConfig,
    //   onGetAuthToken: (data) {
    //     log('log: Auth token data: ${data.toJson()}');
    //   },
    //   onGetUserProfile: (tokens, user) async {
    //     await _onLinkedinGetProfile(user, tokens);
    //   },
    //   onSignInError: (error) {
    //     throw ServerException(
    //       message: error.message ?? 'log: Error signing in with LinkedIn',
    //     );
    //   },
    // );
    // if (currentUser == null) {
    //   throw ServerException(message: 'User is null!');
    // }
    // return getUserDetails();
  }

  // /// Get the LinkedIn profile and sign in with Supabase
  // Future<User> _onLinkedinGetProfile(
  //   LinkedInUser user,
  //   LinkedInAccessToken tokens,
  // ) async {
  //   try {
  //     await supabaseClient.auth.signInWithOAuth(
  //       OAuthProvider.linkedinOidc,
  //     );
  //     AuthState? state;
  //     supabaseClient.auth.onAuthStateChange.listen(
  //       (authState) => state = authState,
  //     );
  //     if (state?.session?.user == null) {
  //       throw ServerException(message: 'User is null!');
  //     }
  //     return state!.session!.user;
  //   } on AuthException catch (e) {
  //     throw ServerException(message: e.message);
  //   } catch (e) {
  //     throw ServerException(message: e.toString());
  //   }
  // }

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
  Future<void> addSubscriptions({
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
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> updateSubscriptions({
    required String userId,
    required String accType,
  }) async {
    try {
      final response = await supabaseClient
          .from('subscriptions')
          .update({'acc_type': accType})
          .eq('user_id', userId)
          .select();

      if (response.isEmpty) {
        throw ServerException(message: 'Subscription not found!');
      }
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> deleteSubscriptions({required int id}) async {
    try {
      final response = await supabaseClient
          .from('subscriptions')
          .delete()
          .eq('id', id)
          .select();

      if (response.isEmpty) {
        throw ServerException(message: 'Subscription not found!');
      }
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
