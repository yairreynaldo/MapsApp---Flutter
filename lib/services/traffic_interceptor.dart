import 'package:dio/dio.dart';

class TrafficInterceptor extends Interceptor {
  final accesToken = 'pk.eyJ1IjoieWFpcjE4cmV5bmFsZG8iLCJhIjoiY2xndXpvMXczMmlkNDNtcWF5YjhiOHNjeCJ9.15CChFjTs-thr6d7c6HPbA';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accesToken,
    });

    super.onRequest(options, handler);
  }
}
