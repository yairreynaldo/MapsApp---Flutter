import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;
import 'package:maps_app/models/models.dart';

class RouteDestination {
  final List<LatLng> points;
  final double durations;
  final double distance;
  final Feature endPlace;

  RouteDestination({
    required this.points,
    required this.durations,
    required this.distance,
    required this.endPlace,
  });
}
