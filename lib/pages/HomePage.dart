
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/custom.drawer.widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleurs.surface,

      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: couleurs.primary,
        foregroundColor: couleurs.onPrimary,
      ),

      drawer: const MyCustomDrawer(),

      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 33,
            color: couleurs.secondary,
          ),
        ),
      ),
    );
  }
}
