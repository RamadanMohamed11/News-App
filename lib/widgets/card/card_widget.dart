import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/pages/specific_category_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.cardItem,
      required this.isDarkTheme,
      required this.onThemeChanged});
  final CardModel cardItem;
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return SpecificCatogryPage(
                cat: cardItem.text,
                isDarkTheme: isDarkTheme,
                onThemeChanged: onThemeChanged,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(cardItem.img))),
        child: Center(
          child: Text(
            cardItem.text,
            style: const TextStyle(
                color: Colors.white, fontSize: 29, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
