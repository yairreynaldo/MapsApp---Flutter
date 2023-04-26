import 'package:dio/dio.dart';

class PlacesInterceptor extends Interceptor {
  final accesToken = 'pk.eyJ1IjoieWFpcjE4cmV5bmFsZG8iLCJhIjoiY2xndXpvMXczMmlkNDNtcWF5YjhiOHNjeCJ9.15CChFjTs-thr6d7c6HPbA';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'access_token': accesToken,
      'language': 'es',
      'limit': 7,
    });
    super.onRequest(options, handler);
  }
}
