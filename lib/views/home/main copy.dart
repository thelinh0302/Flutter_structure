import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/text_type.dart';
import 'package:structure/views/home/home_screen.dart';
import 'package:structure/views/home/search_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  static String routeName = '/home';

  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [HomeScreen(), SearchScreen()];
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.5,
        title: Column(
          children: [
            Text('Delivery To', style: TextsStyle.subTitleLink),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('San Francisco', style: TextsStyle.titleAppBar),
                const Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                ),
              ],
            )
          ],
        ),
      ),
      body: IndexedStack(
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        // type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: ColorsData.appBarBackground,
        selectedItemColor: ColorsData.secondary,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextsStyle.subTitle,
        unselectedLabelStyle: TextsStyle.subTitle,
        showUnselectedLabels: true,
        elevation: 1,
        items: [
          BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? Stack(children: [
                      Image.asset("assets/images/Active.png"),
                      const Icon(
                        Icons.home,
                        size: 30,
                      )
                    ])
                  : const Icon(
                      Icons.home,
                      size: 30,
                    ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? Stack(children: [
                      Image.asset("assets/images/Active.png"),
                      const Icon(
                        Icons.search,
                        size: 30,
                      )
                    ])
                  : const Icon(
                      Icons.search,
                      size: 30,
                    ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? Stack(children: [
                      Image.asset("assets/images/Active.png"),
                      const Icon(
                        Icons.featured_play_list,
                        size: 30,
                      )
                    ])
                  : const Icon(
                      Icons.featured_play_list,
                      size: 30,
                    ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: currentIndex == 3
                  ? Stack(children: [
                      Image.asset("assets/images/Active.png"),
                      const Icon(
                        Icons.person,
                        size: 30,
                      )
                    ])
                  : const Icon(
                      Icons.person,
                      size: 30,
                    ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
