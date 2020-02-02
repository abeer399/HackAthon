import 'package:flutter/material.dart';

import '../Utils.dart';


class PinCode extends StatefulWidget {
  @override
  _PinCodeState createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        body: Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[

                  Container(
                    padding: EdgeInsetsDirectional.only(top:50,start: 20),
                    width: getScreenSize(context).width,
                    child: Image.asset("images/Group685.png"),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsetsDirectional.only(start: 20),
                        width: getScreenSize(context).width,
                        child: Image.asset("images/Group691.png"),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(bottom:5,start: 20),
                      width: getScreenSize(context).width,
                      child: Text("Enter code sent to +923048701535",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),)
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(start: 20),
                      width: getScreenSize(context).width,
                      child: Text("If Axis.horizontal, the scroll view's children are arranged horizontally in a row instead of vertically in a column.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16),)
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(top:20,start: 20),
                      width: getScreenSize(context).width,
                      child: Text("Enter Your Phone Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16),)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: EdgeInsetsDirectional.only(start:0 ),
                            width: getScreenSize(context).width-350,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFf2f2f2)
                                  )
                                ]
                            ),
                            child: Container(
                              child: TextField(
                              ),
                            )
                        ),
                      ),
                    ],
                  )




                ],
              ),

              Padding(
                padding: EdgeInsetsDirectional.only(top: 600,start: 105),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: getScreenSize(context).width-200,
                    color: Color(0xFF28bb4e),
                    child:GestureDetector(
                        onTap: (){

                        },
                        child:Container(
                          padding: EdgeInsetsDirectional.only(top: 17),

                          child: Text("VERIFY",textAlign: TextAlign.center,style: TextStyle(letterSpacing: 1.5,color: Colors.white),),
                        )
                    ) ,
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );;
  }
}
