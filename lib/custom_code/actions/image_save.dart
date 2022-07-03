// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:gallery_saver/gallery_saver.dart';

Future imageSave(String imagesave) async {
  await GallerySaver.saveImage(imagesave, albumName: 'AnimeGirl');
}
