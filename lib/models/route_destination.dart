import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class RouteDestination {
  final List<LatLng> points;
  final double durations;
  final double distance;

  RouteDestination({
    required this.points,
    required this.durations,
    required this.distance,
  });
}
