import 'package:flutter/material.dart';
import 'package:hackathon/pages/ChatPages/ChatHome.dart';

import '../../Utils.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  final imgList = ["img1.jpg","img2.jpg","img4.jpg","img5.jpg","img6.jpg"];
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
                InkWell(
                  onTap: (){navigate(context, Chat());},
                  child: Container(
                      padding: EdgeInsetsDirectional.only(top: 30,start: 10 ),
                      child: Container(
                          child: Icon(Icons.arrow_back,size: 35,color: Colors.white,)
                      )
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 65),
                      child: Text("People",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: Colors.white),),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 170,top: 47),
                  child: Text("200 Contacts",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                ),

                Container(
                    padding: EdgeInsetsDirectional.only(top: 93,start: 15),
                    child: ListView(
                      padding: EdgeInsets.only(top: 10),
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
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
                                    child: Text("Jan 17",style: TextStyle(
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
                                    child: Text("Jan 15",style: TextStyle(
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
                                    child: Text("Jan 11",style: TextStyle(
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
                                    child: Text("Dec 25",style: TextStyle(
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
                                    child: Text("Nov 11",style: TextStyle(
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
                                    child: Text("Sep 26",style: TextStyle(
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
                                    child: Text("Sep 12",style: TextStyle(
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
                                    child: Text("Jan 17",style: TextStyle(
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
                                    child: Text("Jan 15",style: TextStyle(
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
                                    child: Text("Jan 11",style: TextStyle(
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
                                    child: Text("Dec 25",style: TextStyle(
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
                                    child: Text("Nov 11",style: TextStyle(
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
                                    child: Text("Sep 26",style: TextStyle(
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
