
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'ChatPages/ChatHome.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _loginNumberCtrl = TextEditingController();
  String currentText = "";
  String phoneNo;
  String verificationId;
  AuthCredential authCredential;
  @override

  void initState() {
   // checkUser(context);
    super.initState();
  }

  verifyPhone() async {
    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
      this.verificationId = verId;
    };

    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this.verificationId = verId;
    };

    final PhoneVerificationCompleted verifiedSuccess = (AuthCredential cred) {
      authCredential = cred;

    };

    final PhoneVerificationFailed verifiFailed = (AuthException exception) {
      print("${exception.message}");
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this.phoneNo,
        codeAutoRetrievalTimeout: autoRetrieve,
        codeSent: smsCodeSent,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiedSuccess,
        verificationFailed: verifiFailed);

  }

  submitCode(String smsCode) {
    authCredential = PhoneAuthProvider.getCredential(
        verificationId: verificationId, smsCode: smsCode);
  }

  signInWithCred() async {
    var res = await FirebaseAuth.instance.signInWithCredential(authCredential);
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(
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
                          padding: EdgeInsetsDirectional.only( top:30,start: 100),
                          width: getScreenSize(context).width,
                          child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.only(start: 20),
                        width: getScreenSize(context).width,
                        child: Image.asset("images/Group684.png"),
                      ),
                    ],
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        padding: EdgeInsetsDirectional.only(start: 20),
                        width: getScreenSize(context).width-100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFf2f2f2)
                              )
                            ]
                        ),
                        child: Container(
                          child: TextField(
                          controller: _loginNumberCtrl,
                              decoration:  InputDecoration(
                                  hintText: "+92 3048701535",
                                fillColor: Colors.black45
                              )
                          ),
                        )
                    ),
                  ),



                ],
              ),

              Padding(
                padding: EdgeInsetsDirectional.only(top: 520,start: 85),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: getScreenSize(context).width-150,
                    color: Color(0xFF28bb4e),
                    child:GestureDetector(
                        onTap: (){
                          this.phoneNo = _loginNumberCtrl.text;
                          verifyPhone();
                          navigate(context, PinCode());

                        },
                        child:Container(
                          padding: EdgeInsetsDirectional.only(top: 17),

                          child: Text("VERIFY PHONE NUMBER",textAlign: TextAlign.center,style: TextStyle(letterSpacing: 1.5,color: Colors.white),),
                        )
                    ) ,
                  ),
                ),
              )



            ],
          ),
        );


  }

  Widget PinCode(){
    return  Scaffold(
        body: Center(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsDirectional.only(top: 40),
                      child: Image.asset("images/Group685.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Image.asset("images/Group691.png"),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 8.0),
                              child: Text(
                                "Enter code sent to +92 3048701535",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,fontSize: 18),),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam",
                              style: TextStyle(height: 1.5),
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      child: Text("Verify Code",
                        style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5, horizontal: 60),
                        child: PinCodeTextField(
                          length: 4,
                          obsecureText: false,
                          animationType: AnimationType.slide,
                          shape: PinCodeFieldShape.box,
                          animationDuration: Duration(milliseconds: 300),
                          borderRadius: BorderRadius.circular(2),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          onChanged: (value) {
                            /*setState(() {
                              currentText = value;
                            });*/
                            if(value.length == 4 ){
                              navigate(context, Chat());
                            }
                          },
                        )
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          signInWithCred();
                        });
                        navigate(context, Chat());

                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsetsDirectional.only(
                            bottom: 20, top: 10, start: 80, end: 80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            "Verify",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
        ),
      );

  }

  checkUser(BuildContext context) async{
    var auth = FirebaseAuth.instance;
    FirebaseUser realtimeuser = await auth.currentUser();
    print(realtimeuser.phoneNumber);
    if(realtimeuser!= null){
      navigate(context, Chat());
    }
  }

}

