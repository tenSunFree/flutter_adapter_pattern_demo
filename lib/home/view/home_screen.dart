import 'package:flutter/material.dart';
import 'package:flutter_adapter_pattern_demo/home/model/home_bean.dart';
import 'package:flutter_adapter_pattern_demo/home/model/home_model.dart';
import 'package:flutter_adapter_pattern_demo/home/view/home_list_view.dart';
import 'package:flutter_adapter_pattern_demo/home/view/home_list_view_adapter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<HomeBean> homeBeanList = getHomeBeanList();
    HomeListViewAdapter adapter = HomeListViewAdapter(homeBeanList);
    return Scaffold(
        body: Column(children: [
      Image.asset('assets/icon_top_bar.png', fit: BoxFit.fill),
      Expanded(child: HomeListView(adapter: adapter)),
      Image.asset('assets/icon_bottom_bar.png', fit: BoxFit.fill)
    ]));
  }

  List<HomeBean> getHomeBeanList() {
    final HomeModel _model = HomeModel();
    var json = _model.getFakeJson();
    var homeBeanList = _model.parseFakeJson(json);
    return homeBeanList;
  }
}
