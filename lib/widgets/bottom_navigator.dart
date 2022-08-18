import 'package:flutter/material.dart';

import '../resource/colors_data.dart';
import '../resource/text_type.dart';
import 'tab_item.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorsData.appBarBackground,
      selectedItemColor: ColorsData.secondary,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextsStyle.subTitle,
      unselectedLabelStyle: TextsStyle.subTitle,
      showUnselectedLabels: true,
      elevation: 1,
      items: [
        _buildItem(TabItem.home),
        _buildItem(TabItem.search),
        _buildItem(TabItem.orders),
        _buildItem(TabItem.profile),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
      // selectedItemColor: activeTabColor[currentTab]!,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: currentTab == tabItem
          ? Stack(children: [
              Image.asset("assets/images/Active.png"),
              tabIcon[tabItem]
            ])
          : tabIcon[tabItem],
      label: tabName[tabItem],
    );
  }
}
