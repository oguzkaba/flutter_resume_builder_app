/// [Failure] is a base class for all errors that can occur in the application.
abstract class Failure {
  /// Constructor
  const Failure({required this.errorMessage});

  /// Error message
  final String errorMessage;
}

/// [ServerFailure] is a class for errors that occur when the server is down.
class ServerFailure extends Failure {
  /// Constructor
  ServerFailure({required super.errorMessage});
}

/// [CacheFailure] is a class for errors that occur when the cache is down.
class CacheFailure extends Failure {
  /// Constructor
  CacheFailure({required super.errorMessage});
}
