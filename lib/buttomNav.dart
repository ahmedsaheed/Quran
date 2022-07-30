import 'package:flutter/cupertino.dart';
import 'package:quran/screens/community/community.dart';
import 'package:quran/screens/home/homeScreen.dart';
import 'package:quran/screens/profile/profile.dart';
import 'package:quran/screens/stories/articles.dart';
import 'package:quran/screens/unknown/recitation.dart';

class ButtomNav extends StatelessWidget {
  const ButtomNav();
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.radiowaves_right),
            label: 'Recitation',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_circle),
            label: 'Account',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        assert(index >= 0 && index <= 5);
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => Recitation(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => Articles(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeScreen(),
            );
            break;
          case 3:
            return CupertinoTabView(
              builder: (BuildContext context) => community(),
            );
            break;
          case 4:
            return CupertinoTabView(
              builder: (BuildContext context) => Profile(),
            );
            break;
        }
        return CupertinoTabView(
          builder: (BuildContext context) => HomeScreen(),
        );
      },
    );
  }
}
