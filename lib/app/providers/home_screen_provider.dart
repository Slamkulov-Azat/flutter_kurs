import 'package:flutter/material.dart';


class HomeScreenProvider with ChangeNotifier {
  
  int _selectedTab = 0;

  int get getSelectedTab => _selectedTab;

  void onSelectTab(int index){
    if(_selectedTab == index) return;
    
     _selectedTab = index; 

     notifyListeners();
    
  }
}