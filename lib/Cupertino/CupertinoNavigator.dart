

import 'package:flutter/cupertino.dart';
import 'package:murray_mobile_flutter/Cupertino/CupertinoMurrayPage.dart';

class CupertinoTabbedNavigationBar extends StatelessWidget{
  const CupertinoTabbedNavigationBar({super.key});

  static const List<Widget> pages = <Widget>[
    CupertinoMurrayPage(),
    Center(
      child: CupertinoPageScaffold(child: Center(child: Text("Page"))),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.create), label: "Create"),
        ],
      ),
      tabBuilder: (BuildContext context, int index){
        return CupertinoTabView(
          builder: (BuildContext context){
            return pages[index];
          },
        );
      },
    );
  }
}