import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getlocation() async {
    try{
      somethingthatexpectslessthan10(12);
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);
    }
    catch(e)
    {
      print(e);
    }
  }

  void somethingthatexpectslessthan10(int n)
  {
    if(n>10)
      throw 'the number entered is greater than 10';
  }
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
