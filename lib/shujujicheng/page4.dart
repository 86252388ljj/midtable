import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final GlobalKey<NavigatorState> _navigator = GlobalKey();
  List nameList4 = ["中台项目管理", "任务调度模板", "构建单表任务", "构建多表执行任务", "任务执行调度", "查看任务日志"];
  getRouter(index) {
    return CupertinoPageRoute(
        builder: (context) {
          return RoutePage(index);
        },
        maintainState: false,
        fullscreenDialog: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: List.generate(nameList4.length, (index) {
                    return InkWell(
                        onTap: () {
                          _navigator.currentState!.push(getRouter(index));
                        },
                        child: Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(vertical: 1),
                            color: Colors.lightBlue,
                            alignment: Alignment.center,
                            child: Text(
                              nameList4[index],
                              style: const TextStyle(color: Colors.white),
                            )));
                  }),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.grey,
                child: Navigator(
                  restorationScopeId: 'nav2',
                  key: _navigator,
                  onGenerateInitialRoutes:
                      (NavigatorState navigator, String initialRoute) {
                    return [
                      getRouter(0),
                    ];
                  },
                  reportsRouteUpdateToEngine: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoutePage extends StatefulWidget {
  final int index;

  const RoutePage(this.index);

  @override
  State<RoutePage> createState() => _RoutePageState(index);
}

class _RoutePageState extends State<RoutePage> {
  late int? index;

  _RoutePageState(this.index) {}

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return buildPage0(context);
    } else if (index == 1) {
      return buildPage1(context);
    } else if (index == 2) {
      return buildPage2(context);
    } 
    else if (index == 3) {
      return buildPage3(context);
    } else if (index == 4) {
      return buildPage4(context);
    } 
    return buildPage5(context);
  }

  Widget buildPage0(BuildContext context) {
    return Container(
        alignment: Alignment.center, color: Colors.white, child: Text("data0"));
  }

  Widget buildPage1(BuildContext context) {
    return Container(
        alignment: Alignment.center, color: Colors.white, child: Text("data1"));
  }

  Widget buildPage2(BuildContext context) {
    return Container(
        alignment: Alignment.center, color: Colors.white, child: Text("data2"));
  }

  Widget buildPage3(BuildContext context) {
    return Container(
        alignment: Alignment.center, color: Colors.white, child: Text("data3"));
  }
   Widget buildPage4(BuildContext context) {
    return Container(
        alignment: Alignment.center, color: Colors.white, child: Text("data4"));
  }

  Widget buildPage5(BuildContext context) {
    return Container(
        alignment: Alignment.center, color: Colors.white, child: Text("data5"));
  }
}
