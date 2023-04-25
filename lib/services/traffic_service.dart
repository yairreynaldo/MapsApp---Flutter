import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/models/models.dart';
import 'package:maps_app/services/services.dart';

class TrafficService {
  final Dio _dioTraffic;
  final String _baseTrafficUrl = 'https://api.mapbox.com/directions/v5/mapbox';

  TrafficService() : _dioTraffic = Dio()..interceptors.add(TrafficInterceptor());

  Future<TrafficResponse> getCoorsStartToEnd(LatLng start, LatLng end) async {
    final coorString = '${start.longitude},${start.latitude};${end.longitude},${end.latitude}';
    final url = '$_baseTrafficUrl/driving/$coorString';

    final resp = await _dioTraffic.get(url);

    final data = TrafficResponse.fromJson(resp.data);

    return data;
  }
}
