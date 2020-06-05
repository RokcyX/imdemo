import 'package:flutter/material.dart';
import 'package:imdemo/im/ConversationListPage.dart';
import 'package:imdemo/Mine/MinePage.dart';
import '../extension/SRExtension.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = [ConversationListPage(), MinePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white.setDarkModeColor(context, Color.fromARGB(255, 24, 24, 24)),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.portrait), title: Text("我的")),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
