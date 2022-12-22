import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String currantLanguage = "en";
  ThemeMode currentMode = ThemeMode.dark;
changeCurrentLocal(String newLanguage){
  if(newLanguage==currantLanguage){
    return;
  }
  currantLanguage=newLanguage;
  notifyListeners();
}
  changeCurrentTheme(ThemeMode newMode){
    if(newMode==currentMode){
      return;
    }
    currentMode=newMode;
    notifyListeners();
  }
}
