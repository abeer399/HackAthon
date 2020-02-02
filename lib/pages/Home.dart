import 'package:flutter/material.dart';
import 'package:hackathon/Utils.dart';
import 'package:hackathon/pages/Splash.dart';
import 'package:hackathon/pages/swiper.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    setTimeout((timer) {
      timer.cancel();
      navigateClearStack(context, Sswiper());
    }, 3000);
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash()
      );
    }
  }
