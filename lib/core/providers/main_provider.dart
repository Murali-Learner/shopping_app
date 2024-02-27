import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class MainProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  bool _isConnected = false;
  bool _isLoading = true;

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool get isConnected => _isConnected;
  set isConnected(bool value) {
    _isConnected = value;
    notifyListeners();
  }

  int get selectedIndex => _selectedIndex;
  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Future<void> checkInternetConnection() async {
    bool isInternetConnected = await InternetConnectionChecker().hasConnection;
    isLoading = false;
    isConnected = isInternetConnected;
    notifyListeners();
  }
}
