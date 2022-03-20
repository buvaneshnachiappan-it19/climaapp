import 'package:geolocator/geolocator.dart';
class Location {
  double latitude;
  double longitude;
  Future<void> getCurrentLocation() async {
    try {
      //Getting the Location using Geolocator
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude=position.latitude;
      longitude=position.longitude;
    } catch (e) {
      print(e);
    }
  }
}