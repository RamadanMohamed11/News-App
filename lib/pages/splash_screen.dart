import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 90,
                  child: CircleAvatar(
                    radius: 85,
                    backgroundImage:
                        AssetImage("assets/images/global-news.gif"),
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 90,
                  child: CircleAvatar(
                    radius: 85,
                    backgroundImage: AssetImage("assets/images/news.gif"),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/live-streaming.gif"))),
                child: const SizedBox(),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
