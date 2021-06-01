import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/page2");
        },
        child: Container(
          color: Color(0xFF6E78F7),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Med+" , style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
              ),),
              Text("...", style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
              ),)
            ],
          )
        ),
      )
    );
  }
}
