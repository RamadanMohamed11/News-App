import 'package:flutter/material.dart';
import 'package:news_app/widgets/specific_category_widget.dart';

class SpecificCatogryPage extends StatelessWidget {
  const SpecificCatogryPage(
      {super.key,
      required this.cat,
      required this.isDarkTheme,
      required this.onThemeChanged});
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;
  final String cat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkTheme ? Colors.transparent : Colors.white54,
        centerTitle: true,
        title: Row(
          children: [
            const Spacer(),
            Text(
              "News ",
              style: TextStyle(
                  color: isDarkTheme ? Colors.white : Colors.black,
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
        child: SpecificCatogryWidget(
          cat: cat,
          isDarkTheme: isDarkTheme,
        ),
      ),
    );
  }
}
