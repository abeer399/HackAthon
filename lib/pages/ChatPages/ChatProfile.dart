import 'package:flutter/material.dart';
import 'package:hackathon/pages/ChatPages/ChatHome.dart';
import 'package:hackathon/pages/ChatPages/ChatPage.dart';
import 'package:hackathon/pages/Login.dart';

import '../../Utils.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: getScreenSize(context).width,
              child: Image.asset("images/bar.png",fit: BoxFit.fill,),
            ),
            Container(
                margin: EdgeInsetsDirectional.only(top: 28),
                child: Stack(
                  children: <Widget>[

                    Row( mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: <Widget>[
                        InkWell(
                          onTap: (){navigate(context, LoginScreen());},
                          child: Container(
                            child: Container(
                              width: 60,
                              height: 40,
                              decoration: new BoxDecoration(
                                  color: Color(0xFF28bb4e), //new Color.fromRGBO(255, 0, 0, 0.0),
                                  borderRadius: new BorderRadius.only(
                                      topLeft:  const  Radius.circular(40.0),
                                      bottomLeft: const  Radius.circular(40.0))
                              ),
                              child:Icon(Icons.exit_to_app,color: Colors.white,size: 35,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              child: InkWell(
                onTap: (){navigate(context, ChattingPage());},
                child: Container(
                  child: Icon(Icons.arrow_back,color: Colors.white,size: 35,),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80,vertical: 30),
              child: Text("Profile",style: TextStyle(fontSize: 28,color: Colors.white),),
            ),
            Container(
              height: 150,
              width: 150,
              margin: EdgeInsetsDirectional.only(top: 130,start: 120),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.asset("images/img4.jpg"),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 245,start: 225),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height:35,
                  width: 35,
                  color: Color(0xFF28bb4e),
                  child: Icon(Icons.edit,color: Colors.white,),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 350,start: 55),
              child: Text("Your Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 375,start: 55),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(05),
                child:  Container(
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
                              borderRadius:
                              BorderRadius.all(Radius.circular(2)),
                            ),
                            child: Stack(
                              children: <Widget>[
                                TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey[300],
                                    hintStyle: TextStyle(fontSize: 15),
                                    hintText:"Ishaq Hassan",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(vertical: 14,horizontal: 13),
                                  ),
                                ),
                                Positioned(
                                  child: InkWell(
                                    child: SizedBox(width: 70, height: 50),
                                    onTap: () {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsetsDirectional.only(top: 435,start: 60),
                child: Text("About",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
            ),
            Container(
              color: Colors.grey[300],
              height: 160,
              margin: EdgeInsetsDirectional.only(top: 455,start: 60),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(05),
                child:  Container(

                  child: Stack(
                    children: <Widget>[
                      InkWell(
                          onTap: () {},
                          child: Container(
                            height: 160,
                            width: 290,
                            //margin:EdgeInsetsDirectional.only(top: 107, start: 25),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(2)),
                            ),
                            child: Stack(
                              children: <Widget>[
                                TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey[300],
                                    hintStyle: TextStyle(fontSize: 15),
                                    hintText:"but i must explain "
                                        "to you how all this mistaken"
                                        "idea of denouncing pleasure"
                                        "and praising pain was born and i will"
                                        "give you a complete account of the"
                                        "system and expound the actual"
                                        " teachings of the great explore of the truth "
                                        "the master-builder of humans happiness No one"
                                        "Rejects ,Dislike or else",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(vertical: 14,horizontal: 13),
                                  ),
                                ),
                                Positioned(
                                  child: InkWell(
                                    child: SizedBox(width: 70, height: 50),
                                    onTap: () {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){navigate(context, Chat());},
              child: Container(
                margin: EdgeInsetsDirectional.only(top: 630,start: 120),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 40,
                    width: getScreenSize(context).width-270,
                    color: Colors.green,
                    child: Container(
                      margin: EdgeInsetsDirectional.only(top: 10),
                      child: Text("Save",textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
