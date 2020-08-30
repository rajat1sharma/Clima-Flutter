import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getlocation() async {
    Location loc = Location();
    await loc.getcurrentposition();
    print(loc.latitue);
    print(loc.longitude);
  }

//  void somethingthatexpectslessthan10(int n)
//  {
//    if(n>10)
//      throw 'the number entered is greater than 10';
//  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            //getlocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
