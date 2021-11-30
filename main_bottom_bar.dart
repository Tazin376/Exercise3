import 'package:flutter/material.dart';

class MainBottomBar extends StatelessWidget {
  final param;
  const MainBottomBar({this.param});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Column(children: [
        if (param.colorAllow == true)
          Row(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Slider(
                    value: param.valueR.toDouble(),
                    min: 0.0,
                    max: 255.0,
                    // R
                    onChanged: (double v) => {param.valueR = v.toInt()},
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  padding:
                      EdgeInsets.only(left: 0, right: 30, top: 5, bottom: 5),
                  child: FloatingActionButton.extended(
                    label: Text(param.valueR.toString()),
                    backgroundColor: Color.fromRGBO(param.valueR, 0, 0, 1.0),
                    onPressed: () {
                      param.valueR = 255;
                      param.valueG = 0;
                      param.valueB = 0;
                    },
                  ),
                ),
              ),
            ],
          ),
        if (param.colorAllow == true)
          Row(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Slider(
                    value: param.valueG.toDouble(),
                    min: 0.0,
                    max: 255.0,
                    // G
                    onChanged: (double v) => {param.valueG = v.toInt()},
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  padding:
                      EdgeInsets.only(left: 0, right: 30, top: 5, bottom: 5),
                  child: FloatingActionButton.extended(
                    label: Text(param.valueG.toString()),
                    backgroundColor: Color.fromRGBO(0, param.valueG, 0, 1.0),
                    onPressed: () {
                      param.valueR = 0;
                      param.valueG = 255;
                      param.valueB = 0;
                    },
                  ),
                ),
              ),
            ],
          ),
        if (param.colorAllow == true)
          Row(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Slider(
                    value: param.valueB.toDouble(),
                    min: 0.0,
                    max: 255.0,
                    // B
                    onChanged: (v) => {param.valueB = v.toInt()},
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  padding:
                      EdgeInsets.only(left: 0, right: 30, top: 5, bottom: 5),
                  child: FloatingActionButton.extended(
                    label: Text(param.valueB.toString()),
                    backgroundColor: Color.fromRGBO(0, 0, param.valueB, 1.0),
                    onPressed: () {
                      param.valueR = 0;
                      param.valueG = 0;
                      param.valueB = 255;
                    },
                  ),
                ),
              ),
            ],
          ),
      ]),
    );
  }
}
