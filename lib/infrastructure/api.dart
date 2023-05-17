import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api.g.dart';

@riverpod
Dio api(ApiRef ref, {EnvType env = EnvType.dev}) {
  return Dio(BaseOptions(baseUrl: env.apiUrl, ))..interceptors.add(LogInterceptor());
}

enum EnvType {
  dev('localhost/api/v2'),
  prod('');

  const EnvType(this.apiUrl);

  final String apiUrl;
}
