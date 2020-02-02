import 'package:flutter/material.dart';

import 'Home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor:Colors.white),

    );
  }

}