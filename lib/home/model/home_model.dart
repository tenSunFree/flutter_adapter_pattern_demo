import 'dart:convert';
import 'package:flutter_adapter_pattern_demo/home/model/home_bean.dart';

class HomeModel {
  final String _fakeJson = '''
  {
    "contacts": [
      {
        "name": "微創醫療",
        "firstNumber": "37.45",
        "secondNumber": "-0.20(-0.53%)",
        "isIncrease": false
      },
      {
        "name": "華潤醫療",
        "firstNumber": "5.72",
        "secondNumber": "-0.06(-1.04%)",
        "isIncrease": false
      },
      {
        "name": "環球醫療",
        "firstNumber": "5.95",
        "secondNumber": "+0.01(+0.17%)",
        "isIncrease": true
      },
      {
        "name": "中國醫療集團",
        "firstNumber": "0.470",
        "secondNumber": "+0.21(+0.47%)",
        "isIncrease": true
      },
      {
        "name": "新世紀醫療",
        "firstNumber": "1.550",
        "secondNumber": "+0.000(+0.01%)",
        "isIncrease": true
      },
      {
        "name": "康華醫療",
        "firstNumber": "3.10",
        "secondNumber": "-0.001(-0.01%)",
        "isIncrease": false
      },
      {
        "name": "盈健醫療",
        "firstNumber": "0.570",
        "secondNumber": "+0.001(+0.01%)",
        "isIncrease": true
      },
      {
        "name": "愛康醫療",
        "firstNumber": "13.48",
        "secondNumber": "+0.26(+1.97%)",
        "isIncrease": true
      }
    ]
  }
  ''';

  String getFakeJson() => _fakeJson;

  List<HomeBean> parseFakeJson(String contactsJson) {
    var contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    var contactsJsonList = contactsMap['contacts'] as List;
    var contactsList = contactsJsonList
        .map((json) => HomeBean(
            name: json['name'],
            firstNumber: json['firstNumber'],
            secondNumber: json['secondNumber'],
            isIncrease: json['isIncrease']))
        .toList();
    return contactsList;
  }
}
