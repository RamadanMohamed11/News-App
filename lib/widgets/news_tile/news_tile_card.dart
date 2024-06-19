import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTileCard extends StatefulWidget {
  const NewsTileCard(
      {super.key, required this.newsModel, required this.isDarkTheme});
  final ArticlesModel newsModel;
  final bool isDarkTheme;
  @override
  State<NewsTileCard> createState() => _NewsTileCardState();
}

class _NewsTileCardState extends State<NewsTileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:
                widget.isDarkTheme ? const Color(0xff2B272E) : Colors.white54),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(widget.newsModel.img,
                    fit: BoxFit.fill, filterQuality: FilterQuality.high,
                    errorBuilder: (BuildContext context, Object error,
                        StackTrace? stackTrace) {
                  return Image.network(
                      "https://library.ceu.edu/wp-content/uploads/news-2444778_960_720.jpg");
                })),
          ),
          Text(
            widget.newsModel.title,
            style: const TextStyle(fontSize: 27),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            widget.newsModel.subtitle,
            style: TextStyle(
                fontSize: 21,
                color: widget.isDarkTheme ? Colors.white54 : Colors.black54),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ]),
      ),
    );
  }
}
