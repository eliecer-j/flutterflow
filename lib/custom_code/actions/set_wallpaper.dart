// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

Future<void> setWallpaper(String url) async {
  int location = WallpaperManager.BOTH_SCREEN;
  var file = await DefaultCacheManager().getSingleFile(url);
  final bool result =
      await WallpaperManager.setWallpaperFromFile(file.path, location);
}
