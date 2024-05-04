// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resume_builder_app/core/init/di/dependency_injection.dart';

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
        BlocProvider(
          create: (context) => Di.languageCubit,
        ),
      ],
      child: child,
    );
  }
}
