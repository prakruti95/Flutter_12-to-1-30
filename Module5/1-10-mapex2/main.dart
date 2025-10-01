import 'dart:math';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main()
{
  runApp(MaterialApp(home:MyLocationPage()));
}
class MyLocationPage extends StatefulWidget
{
  const MyLocationPage({super.key});

  @override
  State<MyLocationPage> createState() => _MyLocationPageState();
}

class _MyLocationPageState extends State<MyLocationPage>
{
  String _locationMessage = "";
   double t11=0.00000;
  double t22=0.00000;
  LatLng? latLng;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Current Location')),
      // body: Center(
      //   child: Text(
      //     _locationMessage,
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
       body: GoogleMap
          (
            initialCameraPosition:CameraPosition(target: latLng!,zoom: 20.00)

          )
    );
  }

  Future<void> _getCurrentLocation()async
  {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied)
    {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever)
    {
      setState(() {
        _locationMessage = "Location permissions are permanently denied.";
      });
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(()
    {
      t11 = position.latitude;
      t22 = position.longitude;
      latLng = LatLng(t11, t22);
      //_locationMessage =  "Latitude: ${position.latitude}, Longitude: ${position.longitude}";

    });
  }
}

