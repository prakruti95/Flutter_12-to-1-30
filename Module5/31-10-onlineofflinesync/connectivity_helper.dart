import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'api_service.dart';

class ConnectivityHelper {
  // Proper internet check: not just connectivity, but internet access
  static Future<bool> isOnline() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none))
    {
      return false;
    }

    // Check actual internet by pinging Google DNS or any reliable server
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } catch (_) {
      return false;
    }

    return false;
  }

  static void monitorConnectivity() {
    Connectivity().checkConnectivity().then((result) async {
      if (await isOnline()) {
        await MyRepo.syncOfflineData();
      }
    });

    Connectivity().onConnectivityChanged.listen((result) async {
      if (await isOnline()) {
        await MyRepo.syncOfflineData();
      }
    });
  }
}
