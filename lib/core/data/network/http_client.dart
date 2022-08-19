import 'package:dio/dio.dart';

class HttpClient {
  late final Dio _client;

  HttpClient() {
    _client = Dio();
    _client.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));
  }

  Future<Response> get<T>(String url) => _client.get<T>(url);
  Future<Response> post<T>(String url, {dynamic body}) =>
      _client.post<T>(url, data: body);
  Future<Response> put<T>(String url, {dynamic body}) =>
      _client.put<T>(url, data: body);
  Future<Response> delete<T>(String url, {dynamic body}) =>
      _client.delete<T>(url);
}
