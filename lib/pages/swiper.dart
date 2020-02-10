import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hackathon/Utils.dart';
import 'package:hackathon/pages/ChatPages/ChatHome.dart';
import 'package:hackathon/pages/Login.dart';


class Sswiper extends StatefulWidget {
  
  @override
  _SswiperState createState() => _SswiperState();
}

class _SswiperState extends State<Sswiper> {
  final swipperlist= ["Group677.png","Group680.png","Group684.png"];
  var lengths;
  @override
  void initState() {
    lengths = swipperlist.length;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Swiper(
              itemBuilder: (context,lengths) {
                return swip(context, lengths);
              },
              itemCount: lengths,
              pagination: new SwiperPagination(
                margin: EdgeInsetsDirectional.only(bottom: 220),

              )),
        );

  }


  Widget swip(BuildContext context,len ){
    return GestureDetector(
      onTap: (){
        navigate(context, LoginScreen());
      },
      child: Center(
        child: Container(
          height: 400,
          width: 500,

          child: Column(
              children: <Widget>[
                Image.asset(
                  "images/${swipperlist[len]}",
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
                    "sed diam nonumy eirmod tempor invidunt ut labore et "
                    "dolore magna aliquyam erat, sed diam",textAlign: TextAlign.center,)
              ]
          ),
        ),
      )
    );


  }
}
