import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _valueR = 64;
  int _valueG = 192;
  int _valueB = 128;
  int _bodyIconSize = 100;
  bool _resizeAllow = true;
  bool _colorAllow = true;
  int get valueR => _valueR;
  int get valueG => _valueG;
  int get valueB => _valueB;
  int get bodyIconSize => _bodyIconSize;
  bool get resizeAllow => _resizeAllow;
  bool get colorAllow => _colorAllow;
  set valueR(value) => setState(() => _valueR = value);
  set valueG(value) => setState(() => _valueG = value);
  set valueB(value) => setState(() => _valueB = value);
  set bodyIconSize(value) => setState(() => _bodyIconSize = value);
  set resizeAllow(value) => setState(() => _resizeAllow = value);
  set colorAllow(value) => setState(() => _colorAllow = value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(param: this),
        body: MainBody(param: this),
        bottomNavigationBar: MainBottomBar(param: this),
        drawer: MainAppBarDrawer(param: this),
      ),
    );
  }
}
