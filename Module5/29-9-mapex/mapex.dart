import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapEx extends StatefulWidget
{
  const MapEx({super.key});

  @override
  State<MapEx> createState() => _MapExState();
}

class _MapExState extends State<MapEx>
{
  LatLng latLng = LatLng(22.290245059399275, 70.77527706011296);


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Map Example"),),
        body: GoogleMap
          (
            initialCameraPosition:CameraPosition(target: latLng,zoom: 20.00)
            
          )
          ,
      );
  }
}
