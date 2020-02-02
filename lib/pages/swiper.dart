import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hackathon/Utils.dart';
import 'package:hackathon/pages/Login.dart';
import 'package:hackathon/pages/swiperpagination.dart';


class Sswiper extends StatefulWidget {
  
  @override
  _SswiperState createState() => _SswiperState();
}

class _SswiperState extends State<Sswiper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
          body: GestureDetector(
            onTap: (){navigate(context, LoginScreen());},
            child: Swiper(
              itemCount: 3,
              itemBuilder: (BuildContext context,int index ){
                return SwiperPage();
              },
              pagination: SwiperPagination(margin: EdgeInsetsDirectional.only(bottom: 150)),
              //autoplay: true,
              //duration: 1000,


            ),
          )

      ),
    );
  }
}
