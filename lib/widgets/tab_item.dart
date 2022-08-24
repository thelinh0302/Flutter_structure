import 'package:flutter/material.dart';
import 'package:structure/views/home/home_screen.dart';
import 'package:structure/views/home/search_screen.dart';

enum TabItem { home, search, orders, profile }

const Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.orders: 'Orders',
  TabItem.search: 'Search',
  TabItem.profile: 'Profile'
};

const Map<TabItem, dynamic> subTitle = {
  TabItem.home: true,
  TabItem.orders: false,
  TabItem.search: false,
  TabItem.profile: false,
};

const Map<TabItem, dynamic> pages = {
  TabItem.home: 0,
  TabItem.search: 1,
  TabItem.orders: 2,
  TabItem.profile: 3
};

const Map<TabItem, String> tabTitle = {
  TabItem.home: 'DELIVERY TO',
  TabItem.search: 'SEARCH',
  TabItem.orders: 'Your Orders',
  TabItem.profile: 'Your Profile',
};

const Map<TabItem, dynamic> tabIcon = {
  TabItem.home: Icon(
    Icons.home,
    size: 25,
  ),
  TabItem.search: Icon(
    Icons.search,
    size: 25,
  ),
  TabItem.orders: Icon(
    Icons.featured_play_list,
    size: 25,
  ),
  TabItem.profile: Icon(
    Icons.person,
    size: 25,
  ),
};
