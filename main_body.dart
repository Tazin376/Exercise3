import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final param;
  const MainBody({this.param});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(
          Icons.favorite,
          size: param.bodyIconSize.toDouble(),
          color: Color.fromRGBO(param.valueR, param.valueG, param.valueB, 1.0),
        ),
      ),
    );
  }
}
