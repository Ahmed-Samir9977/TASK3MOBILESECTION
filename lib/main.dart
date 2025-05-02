import 'package:flutter/material.dart';
import 'portfolio_screen.dart';
import 'contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primaryColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PortfolioScreen(),
      routes: {
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}