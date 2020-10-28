import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class DioProvider {
  final Dio dio;

  DioProvider({
    @required this.dio,
  })  : assert(dio != null);

  Future init() async {
    dio.options.connectTimeout = 15000;
    dio.options.receiveTimeout = 15000;
    dio.options.validateStatus = (status) => status < 500;

    dio.interceptors.add(LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ));
  }
}