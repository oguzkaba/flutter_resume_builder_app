import 'package:fixresume/core/init/di/dep_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String env) async {
  await getIt.init(environment: env);
}
