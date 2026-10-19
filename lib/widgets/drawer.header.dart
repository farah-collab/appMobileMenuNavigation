
import 'package:flutter/material.dart';

class MyCustomDrawerHeader extends StatelessWidget {
  const MyCustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Theme.of(context).primaryColor],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("image/profile photo .png"),
            radius: 30,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("image/profile photo .png"),
            radius: 100,
          ),
        ],
      ),
    );
  }
}
