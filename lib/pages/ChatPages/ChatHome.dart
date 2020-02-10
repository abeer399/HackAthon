import 'package:flutter/material.dart';
import 'package:hackathon/Utils.dart';
import 'package:hackathon/pages/ChatPages/ChatPage.dart';
import 'package:hackathon/pages/ChatPages/Peoples.dart';
import 'package:hackathon/pages/ChatPages/Search.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

 // final imgList = ["img1.jpg","img2.jpg","img4.jpg","img5.jpg","img6.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(
            children: <Widget>[
              Container(
                width: getScreenSize(context).width,
                child: Image.asset("images/bar.png",fit: BoxFit.fill,),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start:15,top: 15 ),
                child: Container(
                  height: 60,
                  width: 60,
                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(50),

                      child: Container(
                        child: Image.asset("images/img6.jpg"),
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 28,horizontal: 85),
                child: Text("Chats",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Colors.white),),
              ),
              InkWell(
                onTap: (){navigate(context, People());},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30,horizontal: 280),
                  child:  Icon(Icons.add,color: Colors.white,size: 35,),
                ),
              ),

              Container(
                margin: EdgeInsetsDirectional.only(top: 28),
                child: Stack(
                  children: <Widget>[

                    Row( mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: <Widget>[
                        InkWell(
                          onTap: (){navigate(context, SearchPage());},
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
                              child:Icon(Icons.search,color: Colors.white,size: 35,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ),

//              padding: EdgeInsets.symmetric(vertical: 33,horizontal: 280),
              Container(
                padding: EdgeInsetsDirectional.only(top: 93,start: 15),
                child: ListView(
                  padding: EdgeInsets.only(top: 10),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    InkWell(
                      onTap: (){navigate(context, ChattingPage());},
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset("images/img1.jpg"),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                      child:Text("Arbas Pirwani",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                  ),
                                  Container(

                                      padding: EdgeInsetsDirectional.only(start: 25),
                                      child:Text("The quick,brown for jumps",style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing:.5,
                                          fontWeight: FontWeight.w400
                                      ),)
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                  margin: EdgeInsetsDirectional.only(top: 15),
                                  child: Text("4.50 pm",style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),)
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){navigate(context, ChattingPage());},
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset("images/img2.jpg"),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                      child:Text("Lukman Bhukhari",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                  ),
                                  Container(

                                      padding: EdgeInsetsDirectional.only(start: 25),
                                      child:Text("The quick,brown for jumps",style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing:.5,
                                          fontWeight: FontWeight.w400
                                      ),)
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                  margin: EdgeInsetsDirectional.only(top: 15),
                                  child: Text("4.50 pm",style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),)
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img3.jpeg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Hassan Ashraf",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img4.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Ishaq Hassan",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img5.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Usman Bhukhari",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img6.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Usama Hussain",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset("images/img7.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Abeer Ali Siddiqui",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img4.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Ishaq Hassan",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img1.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Arbas Pirwani",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img2.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Lukman Bhukhari",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img3.jpeg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Hassan Ashraf",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img4.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Ishaq Hassan",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img5.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Usman Bhukhari",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img6.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Usama Hussain",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset("images/img7.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Abeer Ali Siddiqui",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img4.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Ishaq Hassan",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img1.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Arbas Pirwani",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img2.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Lukman Bhukhari",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img3.jpeg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Hassan Ashraf",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img4.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Ishaq Hassan",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img5.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Usman Bhukhari",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset("images/img6.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Usama Hussain",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset("images/img7.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsetsDirectional.only(start: 25,top: 10),

                                    child:Text("Abeer Ali Siddiqui",style: TextStyle( fontSize: 16,letterSpacing:.5,fontWeight: FontWeight.bold),)
                                ),
                                Container(

                                    padding: EdgeInsetsDirectional.only(start: 25),
                                    child:Text("The quick,brown for jumps",style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing:.5,
                                        fontWeight: FontWeight.w400
                                    ),)
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: EdgeInsetsDirectional.only(top: 15),
                                child: Text("4.50 pm",style: TextStyle(
                                    fontWeight: FontWeight.w400
                                ),)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),


                  ],
                )
              ),




            ]
        ),
      )
    );

  }
}