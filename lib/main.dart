import 'package:flutter/material.dart';
import 'shouye/page1.dart';
import 'jichujianshe/page2.dart';
import 'shujuzhili/page3.dart';
import 'shujujicheng/page4.dart';
import 'shujukaifa/page5.dart';
import 'diaoduzhongxin/page6.dart';
import 'shujufuwu/page7.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class TabInfo {
  String label;
  Widget widget;
  TabInfo(this.label, this.widget);
}

class MyApp extends StatelessWidget {
  final List<TabInfo> _tabs = [
    TabInfo("首页", const Page1()),
    TabInfo("基础建设", const Page2()),
    TabInfo("数据治理", const Page3()),
    TabInfo("数据集成", const Page4()),
    TabInfo("数据开发", const Page5()),
    TabInfo("调度中心", const Page6()),
    TabInfo("数据服务", const Page7()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: TabBar(
              labelColor: Colors.black,
              isScrollable: true,
              tabs: _tabs.map((TabInfo tab) {
                return Tab(text: tab.label);
              }).toList(),
            ),
          ),
        ),
        body: TabBarView(children: _tabs.map((tab) => tab.widget).toList()),
      ),
    );
  }
}
