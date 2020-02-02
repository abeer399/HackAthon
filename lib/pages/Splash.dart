import 'package:flutter/material.dart';
import 'package:hackathon/Utils.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsetsDirectional.only(top:350),
              color: Colors.white,
              width: getScreenSize(context).width,
              child: Image.asset("images/Group685.png"),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(top: 700,start: 90),
              child: Text("DESIGNED BY PAKSTUDENT" ,style:
              TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700
              ),),
            ),
          ],
        )

    );
  }
}
