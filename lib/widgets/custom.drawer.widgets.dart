
import 'package:flutter/material.dart';
import 'custom_list_tile.dart';
import 'drawer.header.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> menuItems = [
      {
        "title": "Home",
        "icon": Icons.home,
        "route": "/",
      },
      {
        "title": "Counter",
        "icon": Icons.ac_unit,
        "route": "/counter",
      },
      {
        "title": "Chat",
        "icon": Icons.chat,
        "route": "/chat",
      },
    ];

    return Drawer(
      child: Column(
        children: [
          const MyCustomDrawerHeader(),

          for (var item in menuItems) ...[
            CustomListTile(
              icon: item["icon"] as IconData,
              title: item["title"] as String,
              route: item["route"] as String,
            ),

            Divider(
              height: 1,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ],
      ),
    );
  }
}
