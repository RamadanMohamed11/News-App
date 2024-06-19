import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile/news_tile_card_sliver_list.dart';
import 'package:news_app/widgets/private_progress_indicator.dart';

class SpecificCatogryWidget extends StatefulWidget {
  const SpecificCatogryWidget(
      {super.key, required this.cat, required this.isDarkTheme});
  final bool isDarkTheme;
  final String cat;
  @override
  State<SpecificCatogryWidget> createState() => _SpecificCatogryWidgetState();
}

class _SpecificCatogryWidgetState extends State<SpecificCatogryWidget> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch (widget.cat) {
      case "   Top    ":
        future = NewsService().getTopNews();
        break;
      case "Palestine ":
        future = NewsService().getPalestineNews();
        break;
      case "  Sports  ":
        future = NewsService().getSportsNews();
        break;
      case "Technology":
        future = NewsService().getTechNews();
        break;
      case "Education ":
        future = NewsService().getEducationNews();
        break;
      case " Business ":
        future = NewsService().getBusinessNews();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                NewsTileCardSliverList(
                  isDarkTheme: widget.isDarkTheme,
                  articles: snapshot.data!,
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Column(
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
                      size: 85,
                      color: Colors.red,
                    )),
              ],
            );
          } else {
            return const PrivateProgressIndicator();
          }
        });
  }
}
