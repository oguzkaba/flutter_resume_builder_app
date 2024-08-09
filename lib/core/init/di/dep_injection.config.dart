// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:device_info_plus/device_info_plus.dart' as _i833;
import 'package:fixresume/core/init/lang/language_manager.dart' as _i34;
import 'package:fixresume/core/init/network/connectivity_info.dart' as _i928;
import 'package:fixresume/core/init/themes/theme.dart' as _i1041;
import 'package:fixresume/core/modules/app_modules.dart' as _i684;
import 'package:fixresume/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i288;
import 'package:fixresume/features/auth/data/repositories/auth_repository_impl.dart'
    as _i304;
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart'
    as _i74;
import 'package:fixresume/features/auth/domain/usecases/account_type/get_account_type.dart'
    as _i544;
import 'package:fixresume/features/auth/domain/usecases/auth/current_user.dart'
    as _i895;
import 'package:fixresume/features/auth/domain/usecases/auth/user_login_with_apple.dart'
    as _i484;
import 'package:fixresume/features/auth/domain/usecases/auth/user_login_with_email.dart'
    as _i607;
import 'package:fixresume/features/auth/domain/usecases/auth/user_login_with_github.dart'
    as _i287;
import 'package:fixresume/features/auth/domain/usecases/auth/user_login_with_google.dart'
    as _i262;
import 'package:fixresume/features/auth/domain/usecases/auth/user_login_with_linkedin.dart'
    as _i789;
import 'package:fixresume/features/auth/domain/usecases/auth/user_logout.dart'
    as _i1037;
import 'package:fixresume/features/auth/domain/usecases/auth/user_register.dart'
    as _i350;
import 'package:fixresume/features/auth/domain/usecases/subscriptions/add_subscriptions.dart'
    as _i667;
import 'package:fixresume/features/auth/domain/usecases/subscriptions/delete_subscriptions.dart'
    as _i858;
import 'package:fixresume/features/auth/domain/usecases/subscriptions/get_subscriptions.dart'
    as _i461;
import 'package:fixresume/features/auth/domain/usecases/subscriptions/update_subscriptions.dart'
    as _i1049;
import 'package:fixresume/features/auth/domain/usecases/user_details/add_user_details.dart'
    as _i456;
import 'package:fixresume/features/auth/domain/usecases/user_details/delete_user_details.dart'
    as _i495;
import 'package:fixresume/features/auth/domain/usecases/user_details/get_user_details.dart'
    as _i750;
import 'package:fixresume/features/auth/domain/usecases/user_details/update_user_details.dart'
    as _i347;
import 'package:fixresume/features/auth/presentation/blocs/account_type/account_type_bloc.dart'
    as _i114;
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart'
    as _i52;
import 'package:fixresume/features/auth/presentation/blocs/cubits/cubit/register_details_cubit.dart'
    as _i587;
import 'package:fixresume/features/auth/presentation/blocs/subscriptions/subscriptions_bloc.dart'
    as _i169;
import 'package:fixresume/features/auth/presentation/blocs/user_details/user_details_bloc.dart'
    as _i461;
import 'package:fixresume/features/resume/data/datasources/resume_remote_datasource.dart'
    as _i998;
import 'package:fixresume/features/resume/data/repositories/resume_repository_impl.dart'
    as _i421;
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart'
    as _i650;
import 'package:fixresume/features/resume/domain/usecases/add_resumes.dart'
    as _i37;
import 'package:fixresume/features/resume/domain/usecases/delete_resumes.dart'
    as _i100;
import 'package:fixresume/features/resume/domain/usecases/educations/add_educations.dart'
    as _i816;
import 'package:fixresume/features/resume/domain/usecases/educations/delete_educations.dart'
    as _i765;
import 'package:fixresume/features/resume/domain/usecases/educations/get_educations.dart'
    as _i461;
import 'package:fixresume/features/resume/domain/usecases/educations/update_educations.dart'
    as _i903;
import 'package:fixresume/features/resume/domain/usecases/exams/add_exams.dart'
    as _i979;
import 'package:fixresume/features/resume/domain/usecases/exams/delete_exams.dart'
    as _i380;
import 'package:fixresume/features/resume/domain/usecases/exams/get_exams.dart'
    as _i572;
import 'package:fixresume/features/resume/domain/usecases/exams/update_exams.dart'
    as _i1045;
import 'package:fixresume/features/resume/domain/usecases/experiences/add_experiences.dart'
    as _i866;
import 'package:fixresume/features/resume/domain/usecases/experiences/delete_experiences.dart'
    as _i806;
import 'package:fixresume/features/resume/domain/usecases/experiences/get_experiences.dart'
    as _i37;
import 'package:fixresume/features/resume/domain/usecases/experiences/update_experiences.dart'
    as _i500;
import 'package:fixresume/features/resume/domain/usecases/get_resumes.dart'
    as _i945;
import 'package:fixresume/features/resume/domain/usecases/personal_details/add_personal_details.dart'
    as _i651;
import 'package:fixresume/features/resume/domain/usecases/personal_details/delete_personal_details.dart'
    as _i828;
import 'package:fixresume/features/resume/domain/usecases/personal_details/get_personal_details.dart'
    as _i173;
import 'package:fixresume/features/resume/domain/usecases/personal_details/update_personal_details.dart'
    as _i647;
import 'package:fixresume/features/resume/domain/usecases/personal_info/add_personal_info.dart'
    as _i751;
import 'package:fixresume/features/resume/domain/usecases/personal_info/delete_personal_info.dart'
    as _i148;
import 'package:fixresume/features/resume/domain/usecases/personal_info/get_personal_info.dart'
    as _i724;
import 'package:fixresume/features/resume/domain/usecases/personal_info/update_personal_info.dart'
    as _i413;
import 'package:fixresume/features/resume/domain/usecases/references/add_references.dart'
    as _i227;
import 'package:fixresume/features/resume/domain/usecases/references/delete_references.dart'
    as _i241;
import 'package:fixresume/features/resume/domain/usecases/references/get_references.dart'
    as _i24;
import 'package:fixresume/features/resume/domain/usecases/references/update_references.dart'
    as _i917;
import 'package:fixresume/features/resume/domain/usecases/skills/add_skills.dart'
    as _i271;
import 'package:fixresume/features/resume/domain/usecases/skills/delete_skills.dart'
    as _i823;
import 'package:fixresume/features/resume/domain/usecases/skills/get_skills.dart'
    as _i621;
import 'package:fixresume/features/resume/domain/usecases/skills/update_skills.dart'
    as _i243;
import 'package:fixresume/features/resume/domain/usecases/social_accounts/add_social_accounts.dart'
    as _i213;
import 'package:fixresume/features/resume/domain/usecases/social_accounts/delete_social_accounts.dart'
    as _i916;
import 'package:fixresume/features/resume/domain/usecases/social_accounts/get_social_accounts.dart'
    as _i833;
import 'package:fixresume/features/resume/domain/usecases/social_accounts/update_social_accounts.dart'
    as _i77;
import 'package:fixresume/features/resume/domain/usecases/update_resumes.dart'
    as _i741;
import 'package:fixresume/features/resume/presentation/blocs/educations/educations_bloc.dart'
    as _i109;
import 'package:fixresume/features/resume/presentation/blocs/exams/exams_bloc.dart'
    as _i384;
import 'package:fixresume/features/resume/presentation/blocs/experiences/experiences_bloc.dart'
    as _i755;
import 'package:fixresume/features/resume/presentation/blocs/personal_details/personal_details_bloc.dart'
    as _i510;
import 'package:fixresume/features/resume/presentation/blocs/personal_info/personal_info_bloc.dart'
    as _i657;
import 'package:fixresume/features/resume/presentation/blocs/references/references_bloc.dart'
    as _i235;
import 'package:fixresume/features/resume/presentation/blocs/resumes/resumes_bloc.dart'
    as _i719;
import 'package:fixresume/features/resume/presentation/blocs/skills/skills_bloc.dart'
    as _i142;
import 'package:fixresume/features/resume/presentation/blocs/social_accounts/social_accounts_bloc.dart'
    as _i723;
import 'package:flutter_dotenv/flutter_dotenv.dart' as _i170;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:purchases_flutter/models/purchases_configuration.dart' as _i631;
import 'package:signin_with_linkedin/signin_with_linkedin.dart' as _i134;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModules = _$AppModules();
    gh.factory<_i34.LanguageManager>(() => _i34.LanguageManager());
    gh.factory<_i1041.AppTheme>(() => _i1041.AppTheme());
    await gh.factoryAsync<_i170.DotEnv>(
      () => appModules.environment,
      preResolve: true,
    );
    await gh.factoryAsync<_i454.SupabaseClient>(
      () => appModules.supabaseClient,
      preResolve: true,
    );
    await gh.factoryAsync<_i116.GoogleSignIn>(
      () => appModules.googleSignIn,
      preResolve: true,
    );
    await gh.factoryAsync<_i134.LinkedInConfig>(
      () => appModules.linkedInConfig,
      preResolve: true,
    );
    await gh.factoryAsync<_i833.BaseDeviceInfo>(
      () => appModules.deviceInfo,
      preResolve: true,
    );
    await gh.factoryAsync<_i655.PackageInfo>(
      () => appModules.packageInfo,
      preResolve: true,
    );
    await gh.factoryAsync<_i631.PurchasesConfiguration>(
      () => appModules.revenuecatInit,
      preResolve: true,
    );
    gh.singleton<_i895.Connectivity>(() => appModules.connectivity);
    gh.factory<_i288.AuthRemoteDataSource>(() => _i288.AuthRemoteDataSourceImpl(
          gh<_i454.SupabaseClient>(),
          gh<_i116.GoogleSignIn>(),
          gh<_i134.LinkedInConfig>(),
        ));
    gh.factory<_i928.ConnectivityInfo>(() =>
        _i928.ConnectivityInfoImpl(connectivity: gh<_i895.Connectivity>()));
    gh.factory<_i998.ResumeRemoteDataSource>(() =>
        _i998.ResumeRemoteDataSourceImpl(
            supabaseClient: gh<_i454.SupabaseClient>()));
    gh.factory<_i74.AuthRepository>(() => _i304.AuthRepositoryImpl(
          gh<_i288.AuthRemoteDataSource>(),
          gh<_i928.ConnectivityInfo>(),
        ));
    gh.lazySingleton<_i587.RegisterDetailsCubit>(
        () => _i587.RegisterDetailsCubit(
              supabaseClient: gh<_i454.SupabaseClient>(),
              connectivityInfo: gh<_i928.ConnectivityInfo>(),
            ));
    gh.factory<_i650.ResumeRepository>(() => _i421.ResumeRepositoryImpl(
          gh<_i998.ResumeRemoteDataSource>(),
          gh<_i928.ConnectivityInfo>(),
        ));
    gh.factory<_i544.GetAccountType>(
        () => _i544.GetAccountType(gh<_i74.AuthRepository>()));
    gh.factory<_i895.CurrentUser>(
        () => _i895.CurrentUser(gh<_i74.AuthRepository>()));
    gh.factory<_i484.UserLoginWithApple>(
        () => _i484.UserLoginWithApple(gh<_i74.AuthRepository>()));
    gh.factory<_i607.UserLoginWithEmail>(
        () => _i607.UserLoginWithEmail(gh<_i74.AuthRepository>()));
    gh.factory<_i287.UserLoginWithGithub>(
        () => _i287.UserLoginWithGithub(gh<_i74.AuthRepository>()));
    gh.factory<_i262.UserLoginWithGoogle>(
        () => _i262.UserLoginWithGoogle(gh<_i74.AuthRepository>()));
    gh.factory<_i789.UserLoginWithLinkedin>(
        () => _i789.UserLoginWithLinkedin(gh<_i74.AuthRepository>()));
    gh.factory<_i1037.UserLogout>(
        () => _i1037.UserLogout(gh<_i74.AuthRepository>()));
    gh.factory<_i350.UserRegister>(
        () => _i350.UserRegister(gh<_i74.AuthRepository>()));
    gh.factory<_i667.AddSubscriptions>(
        () => _i667.AddSubscriptions(gh<_i74.AuthRepository>()));
    gh.factory<_i858.DeleteSubscriptions>(
        () => _i858.DeleteSubscriptions(gh<_i74.AuthRepository>()));
    gh.factory<_i461.GetSubscriptions>(
        () => _i461.GetSubscriptions(gh<_i74.AuthRepository>()));
    gh.factory<_i1049.UpdateSubscriptions>(
        () => _i1049.UpdateSubscriptions(gh<_i74.AuthRepository>()));
    gh.factory<_i456.AddUserDetails>(
        () => _i456.AddUserDetails(gh<_i74.AuthRepository>()));
    gh.factory<_i495.DeleteUserDetails>(
        () => _i495.DeleteUserDetails(gh<_i74.AuthRepository>()));
    gh.factory<_i750.GetUserDetails>(
        () => _i750.GetUserDetails(gh<_i74.AuthRepository>()));
    gh.factory<_i347.UpdateUserDetails>(
        () => _i347.UpdateUserDetails(gh<_i74.AuthRepository>()));
    gh.lazySingleton<_i114.AccountTypeBloc>(() =>
        _i114.AccountTypeBloc(getAccountType: gh<_i544.GetAccountType>()));
    gh.lazySingleton<_i169.SubscriptionsBloc>(() => _i169.SubscriptionsBloc(
          getSubscriptions: gh<_i461.GetSubscriptions>(),
          addSubscriptions: gh<_i667.AddSubscriptions>(),
          updateSubscriptions: gh<_i1049.UpdateSubscriptions>(),
          deleteSubscriptions: gh<_i858.DeleteSubscriptions>(),
        ));
    gh.factory<_i37.AddResumes>(
        () => _i37.AddResumes(gh<_i650.ResumeRepository>()));
    gh.factory<_i100.DeleteResumes>(
        () => _i100.DeleteResumes(gh<_i650.ResumeRepository>()));
    gh.factory<_i816.AddEducations>(
        () => _i816.AddEducations(gh<_i650.ResumeRepository>()));
    gh.factory<_i765.DeleteEducations>(
        () => _i765.DeleteEducations(gh<_i650.ResumeRepository>()));
    gh.factory<_i461.GetEducations>(
        () => _i461.GetEducations(gh<_i650.ResumeRepository>()));
    gh.factory<_i903.UpdateEducations>(
        () => _i903.UpdateEducations(gh<_i650.ResumeRepository>()));
    gh.factory<_i979.AddExams>(
        () => _i979.AddExams(gh<_i650.ResumeRepository>()));
    gh.factory<_i380.DeleteExams>(
        () => _i380.DeleteExams(gh<_i650.ResumeRepository>()));
    gh.factory<_i572.GetExams>(
        () => _i572.GetExams(gh<_i650.ResumeRepository>()));
    gh.factory<_i1045.UpdateExams>(
        () => _i1045.UpdateExams(gh<_i650.ResumeRepository>()));
    gh.factory<_i866.AddExperiences>(
        () => _i866.AddExperiences(gh<_i650.ResumeRepository>()));
    gh.factory<_i806.DeleteExperiences>(
        () => _i806.DeleteExperiences(gh<_i650.ResumeRepository>()));
    gh.factory<_i37.GetExperiences>(
        () => _i37.GetExperiences(gh<_i650.ResumeRepository>()));
    gh.factory<_i500.UpdateExperiences>(
        () => _i500.UpdateExperiences(gh<_i650.ResumeRepository>()));
    gh.factory<_i945.GetResumes>(
        () => _i945.GetResumes(gh<_i650.ResumeRepository>()));
    gh.factory<_i651.AddPersonalDetails>(
        () => _i651.AddPersonalDetails(gh<_i650.ResumeRepository>()));
    gh.factory<_i828.DeletePersonalDetails>(
        () => _i828.DeletePersonalDetails(gh<_i650.ResumeRepository>()));
    gh.factory<_i173.GetPersonalDetails>(
        () => _i173.GetPersonalDetails(gh<_i650.ResumeRepository>()));
    gh.factory<_i647.UpdatePersonalDetails>(
        () => _i647.UpdatePersonalDetails(gh<_i650.ResumeRepository>()));
    gh.factory<_i751.AddPersonalInfo>(
        () => _i751.AddPersonalInfo(gh<_i650.ResumeRepository>()));
    gh.factory<_i148.DeletePersonalInfo>(
        () => _i148.DeletePersonalInfo(gh<_i650.ResumeRepository>()));
    gh.factory<_i724.GetPersonalInfo>(
        () => _i724.GetPersonalInfo(gh<_i650.ResumeRepository>()));
    gh.factory<_i413.UpdatePersonalInfo>(
        () => _i413.UpdatePersonalInfo(gh<_i650.ResumeRepository>()));
    gh.factory<_i227.AddReferences>(
        () => _i227.AddReferences(gh<_i650.ResumeRepository>()));
    gh.factory<_i241.DeleteReferences>(
        () => _i241.DeleteReferences(gh<_i650.ResumeRepository>()));
    gh.factory<_i24.GetReferences>(
        () => _i24.GetReferences(gh<_i650.ResumeRepository>()));
    gh.factory<_i917.UpdateReferences>(
        () => _i917.UpdateReferences(gh<_i650.ResumeRepository>()));
    gh.factory<_i271.AddSkills>(
        () => _i271.AddSkills(gh<_i650.ResumeRepository>()));
    gh.factory<_i823.DeleteSkills>(
        () => _i823.DeleteSkills(gh<_i650.ResumeRepository>()));
    gh.factory<_i621.GetSkills>(
        () => _i621.GetSkills(gh<_i650.ResumeRepository>()));
    gh.factory<_i243.UpdateSkills>(
        () => _i243.UpdateSkills(gh<_i650.ResumeRepository>()));
    gh.factory<_i213.AddSocialAccounts>(
        () => _i213.AddSocialAccounts(gh<_i650.ResumeRepository>()));
    gh.factory<_i916.DeleteSocialAccounts>(
        () => _i916.DeleteSocialAccounts(gh<_i650.ResumeRepository>()));
    gh.factory<_i833.GetSocialAccounts>(
        () => _i833.GetSocialAccounts(gh<_i650.ResumeRepository>()));
    gh.factory<_i77.UpdateSocialAccounts>(
        () => _i77.UpdateSocialAccounts(gh<_i650.ResumeRepository>()));
    gh.factory<_i741.UpdateResumes>(
        () => _i741.UpdateResumes(gh<_i650.ResumeRepository>()));
    gh.lazySingleton<_i510.PersonalDetailsBloc>(() => _i510.PersonalDetailsBloc(
          getPersonalDetails: gh<_i173.GetPersonalDetails>(),
          addPersonalDetails: gh<_i651.AddPersonalDetails>(),
          updatePersonalDetails: gh<_i647.UpdatePersonalDetails>(),
          deletePersonalDetails: gh<_i828.DeletePersonalDetails>(),
        ));
    gh.lazySingleton<_i755.ExperiencesBloc>(() => _i755.ExperiencesBloc(
          getExperiences: gh<_i37.GetExperiences>(),
          addExperiences: gh<_i866.AddExperiences>(),
          updateExperiences: gh<_i500.UpdateExperiences>(),
          deleteExperiences: gh<_i806.DeleteExperiences>(),
        ));
    gh.lazySingleton<_i461.UserDetailsBloc>(() => _i461.UserDetailsBloc(
          getUserDetails: gh<_i750.GetUserDetails>(),
          addUserDetails: gh<_i456.AddUserDetails>(),
          updateUserDetails: gh<_i347.UpdateUserDetails>(),
          deleteUserDetails: gh<_i495.DeleteUserDetails>(),
        ));
    gh.lazySingleton<_i657.PersonalInfoBloc>(() => _i657.PersonalInfoBloc(
          getPersonalInfo: gh<_i724.GetPersonalInfo>(),
          addPersonalInfo: gh<_i751.AddPersonalInfo>(),
          updatePersonalInfo: gh<_i413.UpdatePersonalInfo>(),
          deletePersonalInfo: gh<_i148.DeletePersonalInfo>(),
        ));
    gh.lazySingleton<_i52.AuthBloc>(() => _i52.AuthBloc(
          currentUser: gh<_i895.CurrentUser>(),
          userRegister: gh<_i350.UserRegister>(),
          userLoginWithEmail: gh<_i607.UserLoginWithEmail>(),
          userLoginWithApple: gh<_i484.UserLoginWithApple>(),
          userLoginWithGithub: gh<_i287.UserLoginWithGithub>(),
          userLoginWithLinkedin: gh<_i789.UserLoginWithLinkedin>(),
          userLoginWithGoogle: gh<_i262.UserLoginWithGoogle>(),
          userLogout: gh<_i1037.UserLogout>(),
        ));
    gh.lazySingleton<_i142.SkillsBloc>(() => _i142.SkillsBloc(
          getSkills: gh<_i621.GetSkills>(),
          addSkills: gh<_i271.AddSkills>(),
          updateSkills: gh<_i243.UpdateSkills>(),
          deleteSkills: gh<_i823.DeleteSkills>(),
        ));
    gh.lazySingleton<_i719.ResumesBloc>(() => _i719.ResumesBloc(
          getResumes: gh<_i945.GetResumes>(),
          addResumes: gh<_i37.AddResumes>(),
          updateResumes: gh<_i741.UpdateResumes>(),
          deleteResumes: gh<_i100.DeleteResumes>(),
        ));
    gh.lazySingleton<_i109.EducationsBloc>(() => _i109.EducationsBloc(
          getEducations: gh<_i461.GetEducations>(),
          addEducations: gh<_i816.AddEducations>(),
          updateEducations: gh<_i903.UpdateEducations>(),
          deleteEducations: gh<_i765.DeleteEducations>(),
        ));
    gh.lazySingleton<_i384.ExamsBloc>(() => _i384.ExamsBloc(
          getExams: gh<_i572.GetExams>(),
          addExams: gh<_i979.AddExams>(),
          updateExams: gh<_i1045.UpdateExams>(),
          deleteExams: gh<_i380.DeleteExams>(),
        ));
    gh.lazySingleton<_i235.ReferencesBloc>(() => _i235.ReferencesBloc(
          getReferences: gh<_i24.GetReferences>(),
          addReferences: gh<_i227.AddReferences>(),
          updateReferences: gh<_i917.UpdateReferences>(),
          deleteReferences: gh<_i241.DeleteReferences>(),
        ));
    gh.lazySingleton<_i723.SocialAccountsBloc>(() => _i723.SocialAccountsBloc(
          getSocialAccounts: gh<_i833.GetSocialAccounts>(),
          addSocialAccounts: gh<_i213.AddSocialAccounts>(),
          updateSocialAccounts: gh<_i77.UpdateSocialAccounts>(),
          deleteSocialAccounts: gh<_i916.DeleteSocialAccounts>(),
        ));
    return this;
  }
}

class _$AppModules extends _i684.AppModules {}
