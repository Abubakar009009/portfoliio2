import 'package:flutter/material.dart';

class ProjectWidgetProvider with ChangeNotifier {
  Color _currentColor = Colors.grey.withOpacity(0.7);

  Color get currentColor => _currentColor;

  void changeColor() {
    _currentColor = Colors.blue.withOpacity(0.7);
    notifyListeners();
  }

  void returnColor() {
    _currentColor = Colors.grey.withOpacity(0.7);
    notifyListeners();
  }
}
