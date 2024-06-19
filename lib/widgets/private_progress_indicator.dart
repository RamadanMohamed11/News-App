import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class PrivateProgressIndicator extends StatelessWidget {
  const PrivateProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 100,
        ),
        LoadingIndicator(
            indicatorType: Indicator.ballClipRotateMultiple,

            /// Required, The loading type of the widget
            colors: [Colors.red],

            /// Optional, The color collections
            strokeWidth: 8,

            /// Optional, The stroke of the line, only applicable to widget which contains line
            backgroundColor: Colors.transparent,

            /// Optional, Background of the widget
            pathBackgroundColor: Colors.black

            /// Optional, the stroke backgroundColor
            ),
      ],
    );
  }
}
