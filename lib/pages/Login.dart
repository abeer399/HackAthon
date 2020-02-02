import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Utils.dart';
import 'package:hackathon/pages/PinCode.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _loginNumberCtrl = TextEditingController();

  String phoneNo;
  String verificationId;
  AuthCredential authCredential;

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
                              decoration:  InputDecoration(
                                  hintText: "3048701535",
                                  labelText:"+92",
                                hintMaxLines: 3,
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
                    child:InkWell(
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
        ),
      ),
    );
  }
}
