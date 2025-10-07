import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';


class DeviceInfoApp extends StatefulWidget {
  @override
  _DeviceInfoAppState createState() => _DeviceInfoAppState();
}

class _DeviceInfoAppState extends State<DeviceInfoApp> {
  String _deviceInfo = "Fetching...";

  @override
  void initState() {
    super.initState();
    getDeviceInfo();
  }

  Future<void> getDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    String deviceData = "";

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        deviceData = '''
        Platform: Android
        Brand: ${androidInfo.brand}
        Model: ${androidInfo.model}
        Android Version: ${androidInfo.version.release}
        SDK: ${androidInfo.version.sdkInt}
        ID: ${androidInfo.id}
        Device: ${androidInfo.device}
        ''';
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        deviceData = '''
        Platform: iOS
        Name: ${iosInfo.name}
        System Version: ${iosInfo.systemVersion}
        Model: ${iosInfo.model}
        Identifier: ${iosInfo.identifierForVendor}
        ''';
      } else {
        deviceData = "Unsupported platform";
      }
    } catch (e) {
      deviceData = "Failed to get device info: $e";
    }

    setState(() {
      _deviceInfo = deviceData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Device Info")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(child: Text(_deviceInfo)),
        ),
      ),
    );
  }
}
