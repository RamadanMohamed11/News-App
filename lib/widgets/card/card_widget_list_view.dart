import 'package:flutter/material.dart';
import 'package:news_app/constants/card_constant.dart';
import 'package:news_app/widgets/card/card_widget.dart';

class CardWidgetListView extends StatefulWidget {
  const CardWidgetListView({
    super.key,
    required this.isDarkTheme,
    required this.onThemeChanged,
  });
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;

  @override
  State<CardWidgetListView> createState() => _CardWidgetListViewState();
}

class _CardWidgetListViewState extends State<CardWidgetListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardItems.length,
          itemBuilder: (context, index) {
            return CardWidget(
              cardItem: cardItems[index],
              isDarkTheme: widget.isDarkTheme,
              onThemeChanged: widget.onThemeChanged,
            );
          }),
    );
  }
}
