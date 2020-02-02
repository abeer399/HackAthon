import 'package:flutter/material.dart';

import '../Utils.dart';
class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsetsDirectional.only(top: 170),
              width: getScreenSize(context).width,
              child:Image.asset("images/Group677.png",fit: BoxFit.fill,),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(top: 500),
              child: Text("The San Francisco–Oakland Bay Bridge half dollar is a fifty-cent piece struck by "
                  " it was designed by Jacques Schnier and honors " ,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
            ),

          ],
        ),
      ],

    );;
  }
}

