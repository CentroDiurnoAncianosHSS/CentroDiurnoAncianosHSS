import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _ImageUserSignin = '';
  String get ImageUserSignin => _ImageUserSignin;
  set ImageUserSignin(String _value) {
    _ImageUserSignin = _value;
  }

  String _imageUserEditCounter = '';
  String get imageUserEditCounter => _imageUserEditCounter;
  set imageUserEditCounter(String _value) {
    _imageUserEditCounter = _value;
  }

  String _imageUserEditAdmin = '';
  String get imageUserEditAdmin => _imageUserEditAdmin;
  set imageUserEditAdmin(String _value) {
    _imageUserEditAdmin = _value;
  }

  String _filePath = '';
  String get filePath => _filePath;
  set filePath(String _value) {
    _filePath = _value;
  }

  String _filePathToDownload = '';
  String get filePathToDownload => _filePathToDownload;
  set filePathToDownload(String _value) {
    _filePathToDownload = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
