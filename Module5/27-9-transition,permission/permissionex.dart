import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Permissionex extends StatefulWidget 
{
  const Permissionex({super.key});

  @override
  State<Permissionex> createState() => _PermissionexState();
}

class _PermissionexState extends State<Permissionex>
{
  final permissionCamera = Permission.camera;
  final permissionLocation = Permission.location;


  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Permission Example"),),
        body: Center
          (
            child: Column
              (
              children: 
              [

                ElevatedButton(
                  onPressed: cameraPermissionStatus(),
                  child: Text('Open Camera'),
                ),
                ElevatedButton(
                  onPressed: locationPermissionStatus(),
                  child: Text('Get Location'),
                ),
              ], 
             ),
          ),
      );
  }

  cameraPermissionStatus() async
  {
    final status = await permissionCamera.request();

    if (status.isGranted)
    {
      // Open the camera
      print('Opening camera...');
    }
    else
    {
      // Permission denied
      print('Camera permission denied.');
    }
  }

  locationPermissionStatus() {}
}
