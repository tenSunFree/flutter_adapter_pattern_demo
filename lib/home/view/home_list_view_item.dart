import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adapter_pattern_demo/home/model/home_bean.dart';

class HomeListViewItem extends StatelessWidget {
  final HomeBean bean;

  const HomeListViewItem({
    @required this.bean,
  }) : assert(bean != null);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF1E252B),
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(8),
        height: 80,
        child: buildColumn());
  }

  Column buildColumn() {
    return Column(children: <Widget>[
      Expanded(child: SizedBox()),
      Row(children: <Widget>[
        Text(bean.name, style: TextStyle(color: Colors.white, fontSize: 18)),
        Expanded(child: SizedBox()),
        Text(bean.firstNumber,
            style: TextStyle(color: Colors.white, fontSize: 16))
      ]),
      Expanded(child: SizedBox()),
      Row(children: <Widget>[
        Image.asset('assets/icon_clock.png',
            fit: BoxFit.fill, width: 20, height: 20),
        SizedBox(width: 8),
        Text('03/12 | 香港',
            style: TextStyle(color: Color(0xFFCAC8C6), fontSize: 16)),
        Expanded(child: SizedBox()),
        Text(bean.secondNumber,
            style: TextStyle(
                color:
                bean.isIncrease ? Color(0xFF47F234) : Color(0xFFFF4E4C),
                fontSize: 15))
      ]),
      Expanded(child: SizedBox())
    ]);
  }
}
