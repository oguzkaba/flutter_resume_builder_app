import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/presentation/blocs/account_type/account_type_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/cubits/cubit/register_details_cubit.dart';
import 'package:fixresume/features/auth/presentation/blocs/subscriptions/subscriptions_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/user_details/user_details_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/educations/educations_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/exams/exams_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/experiences/experiences_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/personal_details/personal_details_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/personal_info/personal_info_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/references/references_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/resumes/resumes_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/skills/skills_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/social_accounts/social_accounts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The `WrapBlocProvider` class is a custom widget in Dart that extends `StatelessWidget`. It is used
/// to provide a specific Bloc (Business Logic Component) to its child widget using the
/// `MultiBlocProvider` widget from the `flutter_bloc` package. In this case, the `WrapBlocProvider`
/// widget wraps its child widget with a `LanguageCubit` Bloc provided by the `BlocProvider`. This
/// allows the child widget and its descendants to access and interact with the functionalities provided
/// by the `LanguageCubit` Bloc.
class WrapBlocProvider extends StatelessWidget {
  const WrapBlocProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<RegisterDetailsCubit>()),
        BlocProvider(create: (context) => getIt<AccountTypeBloc>()),
        BlocProvider(create: (context) => getIt<SubscriptionsBloc>()),
        BlocProvider(create: (context) => getIt<UserDetailsBloc>()),
        BlocProvider(create: (context) => getIt<EducationsBloc>()),
        BlocProvider(create: (context) => getIt<ExamsBloc>()),
        BlocProvider(create: (context) => getIt<ExperiencesBloc>()),
        BlocProvider(create: (context) => getIt<PersonalDetailsBloc>()),
        BlocProvider(create: (context) => getIt<PersonalInfoBloc>()),
        BlocProvider(create: (context) => getIt<ReferencesBloc>()),
        BlocProvider(create: (context) => getIt<SkillsBloc>()),
        BlocProvider(create: (context) => getIt<SocialAccountsBloc>()),
        BlocProvider(create: (context) => getIt<ResumesBloc>()),
      ],
      child: child,
    );
  }
}
