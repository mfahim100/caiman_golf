import 'package:flutter/cupertino.dart';


class MenuProvider extends ChangeNotifier {

  int _indexTab = 0;
  int get indexTab => _indexTab;
  setIndexTab(int val) {
    _indexTab = val;
    notifyListeners();
  }

}