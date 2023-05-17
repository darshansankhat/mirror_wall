import 'package:flutter/material.dart';
import 'package:mirror_wall/Browser_app/View_screens/Browser_screen.dart';
import 'package:mirror_wall/Education_app/View_screens/Education_screen.dart';
import 'package:mirror_wall/OTT_app/View_screens/OTT_screen.dart';

class Bottom_provider extends ChangeNotifier
{
  int i=0;

  List screenList=[
    Education_screen(),
    Browser_screen(),
    OTT_screen(),
  ];

  void selectScreen(int value)
  {
    i=value;

    notifyListeners();
  }
}