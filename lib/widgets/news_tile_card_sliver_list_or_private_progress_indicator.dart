import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile/news_tile_card_sliver_list.dart';
import 'package:news_app/widgets/private_progress_indicator.dart';

class NewsTileCardSliverListOrPrivateProgressIndicator extends StatefulWidget {
  const NewsTileCardSliverListOrPrivateProgressIndicator(
      {super.key, required this.isDarkTheme});
  final bool isDarkTheme;

  @override
  State<NewsTileCardSliverListOrPrivateProgressIndicator> createState() =>
      _NewsTileCardSliverListOrPrivateProgressIndicatorState();
}

class _NewsTileCardSliverListOrPrivateProgressIndicatorState
    extends State<NewsTileCardSliverListOrPrivateProgressIndicator> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileCardSliverList(
              isDarkTheme: widget.isDarkTheme,
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 240,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.settings_backup_restore_sharp,
                        size: 100,
                        color: Colors.red,
                      )),
                ],
              ),
            );
          } else {
            return const SliverToBoxAdapter(child: PrivateProgressIndicator());
          }
        });
  }
}
