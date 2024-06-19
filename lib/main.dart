import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  bool _isDarkTheme = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomePage(
        isDarkTheme: _isDarkTheme,
        onThemeChanged: (value) {
          setState(() {
            _isDarkTheme = value;
          });
        },
      ),
    );
  }
}
