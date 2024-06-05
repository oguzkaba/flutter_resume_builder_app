import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
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
      ],
      child: child,
    );
  }
}
