import 'package:flutter/material.dart';
import 'package:hackathon/pages/ChatPages/Peoples.dart';

import '../../Utils.dart';
import 'ChatHome.dart';



class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  double _animatedHeight = 0.0;

  final Friends = [
    "Abeer Ali Siddiqui",
    "Ishaq Hassan",
    "Usama Hussain",
    "Zahid Anwar",
    "Usama Baseer",
    "Hassan Raees",
    "Usama Naseem Okharvi",
  ];
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
        body:SafeArea(
          child: Stack(
              children: <Widget>[
                Container(
                  width: getScreenSize(context).width,
                  child: Image.asset("images/bar.png",fit: BoxFit.fill,),
                ),
               Container(
                 margin: EdgeInsetsDirectional.only(top: 25,start: 55),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(25),
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
                                 BorderRadius.all(Radius.circular(7)),
                               ),
                               child: Stack(
                                 children: <Widget>[
                                   TextField(
                                     maxLines: 1,
                                     decoration: InputDecoration(
                                       hintStyle: TextStyle(fontSize: 15),
                                       hintText:"Search by name or phone number",
                                       border: InputBorder.none,
                                       contentPadding: EdgeInsets.symmetric(vertical: 13,horizontal: 13),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new AnimatedContainer(
                            // curve:Curves.easeOutCirc,
                            duration: const Duration(milliseconds: 1000),
                            child: new Container(
                              margin: EdgeInsetsDirectional.only(start: 5),
                              child: ListView.builder(
                                itemCount: Friends.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (c,i)=>Text(Friends[i],style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                                ),
                              ),
                            ),
                            height: _animatedHeight,
                            color: Colors.transparent,
                            width: 290.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 30,start: 305),
                  child: InkWell(
                    onTap: (){navigate(context, People());},
                    child: Icon(Icons.search,color: Color(0xFFacacac),size: 30,),
                  ),
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
