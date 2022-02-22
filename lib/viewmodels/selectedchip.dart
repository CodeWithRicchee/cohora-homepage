import 'package:flutter/material.dart';

class SelectedChip extends ChangeNotifier {
  String? _selectedChip = "Top";
  void changeChip(String newValue) {
    _selectedChip = newValue;
    print(_selectedChip);
    notifyListeners();
  }

  String? get selectedChip {
    return _selectedChip;
  }
}
