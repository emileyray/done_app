import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

const String _importanceColor = "importanceColor";

@Singleton()
class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  RemoteConfigService() {
    _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 60),
      minimumFetchInterval: Duration.zero,
    ));
  }

  Color get importanceColor =>
      Color(int.parse(_remoteConfig.getString(_importanceColor).substring(2),
          radix: 16));

  FirebaseRemoteConfig get remoteConfig => _remoteConfig;
  Future initialize() async {
    try {
      await _remoteConfig.setDefaults({
        _importanceColor: '0xFFFF3B30',
      });
      await _fetchAndActivate();
    } on FirebaseException catch (e) {
      debugPrint(e.message);
    }
  }

  Future _fetchAndActivate() async {
    await _remoteConfig.fetchAndActivate();
  }
}
