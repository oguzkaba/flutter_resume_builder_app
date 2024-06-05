/// ServerException classes
class ServerException implements Exception {
  ServerException({this.message = 'Server Exception'});
  final String message;
  @override
  String toString() => message;
}

/// CacheException classes
class CacheException implements Exception {
  CacheException({this.message = 'Cache Exception'});
  final String message;
  @override
  String toString() => message;
}

/// NetworkException classes
class NetworkException implements Exception {
  NetworkException({this.message = 'Network Exception'});
  final String message;
  @override
  String toString() => message;
}

/// UnknownException classes
class UnknownException implements Exception {
  UnknownException({this.message = 'Unknown Exception'});
  final String message;
  @override
  String toString() => message;
}

/// NoInternetException classes
class NoInternetException implements Exception {
  NoInternetException({this.message = 'No Internet Exception'});
  final String message;
  @override
  String toString() => message;
}

/// FileNotFoundExeption  classes
class FileNotFoundExeption implements Exception {
  FileNotFoundExeption({this.message = 'File Not Found Exception'});
  final String message;
  @override
  String toString() => message;
}
