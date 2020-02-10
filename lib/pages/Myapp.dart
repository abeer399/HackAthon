import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3e3e3e),
    ));
    return MaterialApp(
      theme: ThemeData.light(),
      home: Home(),
      debugShowCheckedModeBanner: false,

    );
  }

}