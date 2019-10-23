import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List listHeaderAndPage = [
  HeaderItem(
    icon: Icons.account_circle,
    title: 'Profile',
    pages: [
      PageItem(title: 'Profile 1', page: Container(), path: ''),
    ],
  ),
];

class HeaderItem {
  @required
  final String title;
  @required
  final IconData icon;
  @required
  final List<PageItem> pages;

  HeaderItem({this.icon, this.title, this.pages});
}

class PageItem {
  final String title;
  final String path;
  final Widget page;

  PageItem({this.title, this.page, this.path});
}
