import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hackathon/pages/ChatPages/ChatHome.dart';
import 'package:hackathon/pages/ChatPages/ChatProfile.dart';

import '../../Utils.dart';

class ChattingPage extends StatefulWidget {
  @override
  _ChattingPageState createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  double _animatedHeight = 0.0;

  expand() {
    setState(() {
      _animatedHeight = 200.0;
    });
  }

  collapse() {
    setState(() {
      _animatedHeight = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: <Widget>[

        Stack(
          children: <Widget>[
            ListView(
              padding: EdgeInsets.only(top: 120,bottom: 50),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                /*borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                        child: Card(
                          child: Container(
                              height: 50,
                              width: 200,
                              color: Color(0xFF28bb4e),
                              child: Container(
                                margin: EdgeInsetsDirectional.only(
                                    start: 10, top: 15),
                                child: Text(
                                  "Walikum Assalam",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        bottomRight:Radius.circular(70),
                      ),
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Colors.grey[300],
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Assalam U Alikum",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft:Radius.circular(70),
                      ),child: Container(
                      child: Card(
                        child: Container(
                            height: 50,
                            width: 200,
                            color: Color(0xFF28bb4e),
                            child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  start: 10, top: 15),
                              child: Text(
                                "Walikum Assalam",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Container(
              width: getScreenSize(context).width,
              child: Image.asset(
                "images/bar.png",
                fit: BoxFit.fill,
              ),
            ),
            InkWell(
              onTap: () {
                navigate(context, Profile());
              },
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 65, top: 15),
                child: Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        child: Image.asset("images/img6.jpg"),
                      )),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 130, top: 28),
              child: Text(
                "Usama Hussain",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
            ),
            InkWell(
              onTap: () {
                navigate(context, Chat());
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsetsDirectional.only(top: 673),
          child: Container(
            height: 70,
            width: getScreenSize(context).width,
            decoration:
                BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey[300])]),
            child: Card(
              child: Stack(
                children: <Widget>[
                  Container(
                    // margin: EdgeInsetsDirectional.only(),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(top: 10, start: 15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 40,
                                      width: 290,
                                      //margin:EdgeInsetsDirectional.only(top: 107, start: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7)),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          TextField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintStyle:
                                                  TextStyle(fontSize: 15),
                                              icon: Icon(Icons.insert_emoticon),
                                              suffixIcon:
                                                  Icon(Icons.attach_file),
                                              hintText: "Type a message",
                                              fillColor: Colors.grey,
                                              hoverColor: Colors.grey,
                                              focusColor: Colors.grey[600],
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 13,
                                                      horizontal: 15),
                                            ),
                                            onChanged: (val) {
                                              if (val.isEmpty) {
                                                collapse();
                                              } else {
                                                expand();
                                              }
                                            },
                                          ),
                                          Positioned(
                                            child: InkWell(
                                              child: SizedBox(
                                                  width: 70, height: 50),
                                              onTap: () {
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 10, start: 320),
                    child: Image.asset(
                      "images/send.png",
                      color: Color(0xFF28bb4e),
                      height: 40,
                      width: 50,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    )));
  }
}
