import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _favorite = prefs.getStringList('ff_favorite') ?? _favorite;
  }

  SharedPreferences prefs;

  List<String> _favorite = [];
  List<String> get favorite => _favorite;
  set favorite(List<String> _value) {
    _favorite = _value;
    prefs.setStringList('ff_favorite', _value);
  }

  void addToFavorite(String _value) {
    _favorite.add(_value);
    prefs.setStringList('ff_favorite', _favorite);
  }

  void removeFromFavorite(String _value) {
    _favorite.remove(_value);
    prefs.setStringList('ff_favorite', _favorite);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
