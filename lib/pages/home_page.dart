import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/pages/splash_screen.dart';
import 'package:news_app/widgets/card/card_widget_list_view.dart';
import 'package:news_app/widgets/news_tile_card_sliver_list_or_private_progress_indicator.dart';

class HomePage extends StatefulWidget {
  bool isDarkTheme;
  ValueChanged<bool> onThemeChanged;
  HomePage(
      {super.key, required this.isDarkTheme, required this.onThemeChanged});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showSplash = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showSplash
        ? const SplashScreen()
        : Scaffold(
            backgroundColor:
                widget.isDarkTheme ? Colors.transparent : Colors.white60,
            appBar: AppBar(
              backgroundColor:
                  widget.isDarkTheme ? Colors.transparent : Colors.white54,
              centerTitle: true,
              title: Row(
                children: [
                  Switch(
                    activeColor: Colors.blue.withRed(255),
                    value: widget.isDarkTheme,
                    onChanged: widget.onThemeChanged,
                  ),
                  const Spacer(),
                  Text(
                    "News ",
                    style: TextStyle(
                        color: widget.isDarkTheme ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Up To Date",
                    style: TextStyle(color: Colors.red),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: CardWidgetListView(
                        isDarkTheme: widget.isDarkTheme,
                        onThemeChanged: widget.onThemeChanged,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Divider(
                        color: Colors.redAccent,
                        thickness: 4,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                    NewsTileCardSliverListOrPrivateProgressIndicator(
                      isDarkTheme: widget.isDarkTheme,
                    )
                  ],
                ),
              ),
            ));
  }
}
