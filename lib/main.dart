import 'package:apptp3/pages/HomePage.dart';
import 'package:apptp3/pages/Counter_page.dart';
import 'package:apptp3/pages/ChatPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final couleurs = ColorScheme.fromSeed(seedColor: Colors.pink);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: couleurs),
      initialRoute: "/",
      routes: {
        "/": (context) {
          return HomePage();
        },
        "/counter": (context) {
          return CounterPage();
        },
        "/chat": (context) {
          return ChatPage();
        },
      },
    );
  }
}