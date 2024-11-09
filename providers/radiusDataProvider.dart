import 'package:flutter/material.dart';

class RadiusDataProvider extends ChangeNotifier {
  double _topLeft = 0.0;
  double _topRight = 0.0;
  double _bottomLeft = 0.0;
  double _bottomRight = 0.0;

  double get topLeft => _topLeft;
  double get topRight => _topRight;
  double get bottomLeft => _bottomLeft;
  double get bottomRight => _bottomRight;

  set topLeftRadius(double value) {
    _topLeft = value;
    notifyListeners();
  }

  set topRightRadius(double value) {
    _topRight = value;
    notifyListeners();
  }

  set bottomLeftRadius(double value) {
    _bottomLeft = value;
    notifyListeners();
  }

  set bottomRightRadius(double value) {
    _bottomRight = value;
    notifyListeners();
  }
}