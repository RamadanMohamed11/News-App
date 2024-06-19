import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile/news_tile_card.dart';
import 'package:url_launcher/url_launcher.dart';

// List<ArticlesModel> articles = [];

class NewsTileCardSliverList extends StatefulWidget {
  List<ArticlesModel> articles;
  NewsTileCardSliverList(
      {super.key, required this.articles, required this.isDarkTheme});
  final bool isDarkTheme;
  @override
  State<NewsTileCardSliverList> createState() => _NewsTileCardSliverListState();
}

class _NewsTileCardSliverListState extends State<NewsTileCardSliverList> {
  @override
  Widget build(BuildContext context) {
    return widget.articles.isEmpty
        ? SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 240,
                ),
                IconButton(
                    onPressed: () async {
                      widget.articles = await NewsService().getGeneralNews();
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.settings_backup_restore_sharp,
                      size: 100,
                      color: Colors.red,
                    )),
              ],
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: widget.articles.length, (context, index) {
            return Column(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        launchUrl(Uri.parse(widget.articles[index].url),
                            mode: LaunchMode.inAppWebView);
                      });
                    },
                    child: NewsTileCard(
                        isDarkTheme: widget.isDarkTheme,
                        newsModel: widget.articles[index])),
                const Divider(
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  height: 100,
                  color: Colors.red,
                )
              ],
            );
          }));
  }
}
