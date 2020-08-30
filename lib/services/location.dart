import 'package:geolocator/geolocator.dart';

class Location {
  double latitue, longitude;

  Future<void> getcurrentposition() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitue = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
