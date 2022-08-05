import 'package:dio/dio.dart';

class Client {
  late BaseOptions options;
  Client() {
    _init();
  }

  _init() {
    options = BaseOptions();
    options.baseUrl = "https://rickandmortyapi.com/api/";
    options.connectTimeout = 5000;
    options.receiveTimeout = 5000;
  }
}

extension AuthClient on Client {
  Dio initializeAuthClient() {
    return Dio(options);
  }
}

extension NonAuthClient on Client {
  Dio initializeNonAuthClient() {
    return Dio(options);
  }
}
