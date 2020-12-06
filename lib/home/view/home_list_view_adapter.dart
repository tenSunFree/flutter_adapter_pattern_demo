import 'package:flutter_adapter_pattern_demo/home/model/home_bean.dart';

class HomeListViewAdapter {
  final List<HomeBean> _homeBeanList;

  HomeListViewAdapter(this._homeBeanList);

  List<HomeBean> getList() {
    return _homeBeanList.map((bean) {
      String name = '香港 ${bean.name}';
      String firstNumber = '${bean.firstNumber}1';
      String secondNumber = '${bean.secondNumber}';
      bool isIncrease = bean.isIncrease;
      return HomeBean(
          name: name,
          firstNumber: firstNumber,
          secondNumber: secondNumber,
          isIncrease: isIncrease);
    }).toList();
  }
}
