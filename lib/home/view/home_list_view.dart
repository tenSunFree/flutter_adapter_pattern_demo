import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adapter_pattern_demo/home/model/home_bean.dart';
import 'package:flutter_adapter_pattern_demo/home/view/home_list_view_item.dart';
import 'package:flutter_adapter_pattern_demo/home/view/home_list_view_adapter.dart';

class HomeListView extends StatefulWidget {
  final HomeListViewAdapter adapter;

  const HomeListView({@required this.adapter}) : assert(adapter != null);

  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  final List<HomeBean> _list = List<HomeBean>();

  @override
  void initState() {
    super.initState();
    _list.addAll(widget.adapter.getList());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(color: Color(0xFF0B0F11)),
      ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: _list.length,
          itemBuilder: (context, index) => HomeListViewItem(bean: _list[index]))
    ]);
  }
}
