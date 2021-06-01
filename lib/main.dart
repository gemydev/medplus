import 'package:flutter/material.dart';
import 'package:medplus/ui/page1.dart';
import 'package:medplus/ui/page2.dart';
import 'package:medplus/ui/test.dart';


void main() async{

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TestPage(),
    routes: <String , WidgetBuilder>{
      "/page1" : (BuildContext context )=> Page1(),
      "/page2" : (BuildContext context )=> Page2(),
    },
  ));
}
