// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:connectivity_plus/connectivity_plus.dart';

Future checkOnline() async {
  Connectivity()
      .onConnectivityChanged
      .listen((List<ConnectivityResult> result) {
    if (connectivityResult.contains(ConnectivityResult.none)) {
      FFAppstate().update(() => FFAppstate().isOnline = false);
    } else
      FFAppstate().update(() => FFAppstate().isOnline = true);
  });
}
